# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/eclass/enlightenment.eclass,v 1.72 2007/04/20 04:30:18 vapier Exp $
#
# Author: vapier@gentoo.org

inherit eutils libtool

# E_STATE's:
#	release      [default]
#		KEYWORDS arch
#		SRC_URI  $P.tar.gz
#		S        $WORKDIR/$P
#
#	snap         $PV has .200##### datestamp or .### counter
#		KEYWORDS ~arch
#		SRC_URI  $P.tar.bz2
#		S        $WORKDIR/$P
#
#	live         $PV has a 9999 marker
#		KEYWORDS ""
#		SRC_URI  `svn update`
#		S        $WORKDIR/$EVCS_MODULE
#
# Overrides:
#	KEYWORDS    EKEY_STATE
#	SRC_URI     EURI_STATE
#	S           EURI_STATE
# ############
#
# We do not support default CVS servers - all legacy CVS ebuilds must explicitly
# specify their server.
#

E17_DEFAULT_SVN="http://svn.enlightenment.org/svn/e/trunk"

E_STATE="release"

if [[ ${PV/9999} != ${PV} ]] ; then
	E_STATE="live"

	if	[[ -n "${ECVS_SERVER}" || \
			-n "${ESVN_REPO_URI}" ]]; then

		EVCS_COPY_ROOT="e17-external"
	else
		EVCS_COPY_ROOT="e17"
	fi

	if [[ -n "${ECVS_SERVER}" ]]; then
		if [ -z "${VCS_MODULE}" ]; then
			EVCS_MODULE="${PN}"
		elif [[ ${CATEGORY/libs} != ${CATEGORY} ]] ; then
			EVCS_MODULE="${EVCS_COPY_ROOT}/libs/${PN}"
		else
			EVCS_MODULE="${EVCS_COPY_ROOT}/apps/${PN}"
		fi

		ECVS_MODULE=${EVCS_MODULE}
		inherit cvs
	else
		: ${EVCS_MODULE:=${PN}}
		: ${ESVN_PROJECT:=${EVCS_COPY_ROOT}}

		if [[ ${EVCS_MODULE%/*} != ${EVCS_MODULE} ]]; then
			ESVN_PROJECT="${ESVN_PROJECT%/}/${EVCS_MODULE%/*}"
		fi

		: ${ESVN_REPO_URI:=${E17_DEFAULT_SVN}/${EVCS_MODULE}}
		inherit subversion
	fi
elif [[ ${PV/.200[3-9][0-1][0-9][0-3][0-9]/} != ${PV} ]] ; then
	E_STATE="snap"
elif [[ ${PV%%.[0-9][0-9][0-9]} != ${PV} ]] ; then
	E_STATE="snap"
	EURI_STATE="release"
fi


DESCRIPTION="A DR17 production"
HOMEPAGE="http://www.enlightenment.org/"

case ${EURI_STATE:-${E_STATE}} in
	release) SRC_URI="http://enlightenment.freedesktop.org/files/${P}.tar.gz mirror://sourceforge/enlightenment/${P}.tar.gz";;
	snap)    SRC_URI="mirror://gentoo/${P}.tar.bz2";;
	live)    SRC_URI="";;
esac

LICENSE="BSD"
SLOT="0"

case ${EKEY_STATE:-${E_STATE}} in
	release) KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc64 sh sparc x86 ~x86-fbsd";;
	snap)    KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sh ~sparc ~x86 ~x86-fbsd";;
	live)    KEYWORDS="";;
esac

IUSE="nls doc"

DEPEND="doc? ( app-doc/doxygen )"
RDEPEND="nls? ( sys-devel/gettext )"

case ${EURI_STATE:-${E_STATE}} in
	release) S=${WORKDIR}/${P};;
	snap)    S=${WORKDIR}/${PN};;
	live)    S=${WORKDIR}/${EVCS_MODULE};;
esac

WANT_AUTOCONF=${E17_WANT_AUTOCONF:-latest}
WANT_AUTOMAKE=${E17_WANT_AUTOMAKE:-latest}
inherit autotools

enlightenment_warning_msg() {
	local evcs_category=$(echo ${EVCS_MODULE%%/*} | tr A-Z a-z);

	if [[ -n ${E17_ESVN_SERVER} ]] ; then
		einfo "Using user svn server: ${E17_ESVN_SERVER}"
	fi

	if [[ "${evcs_category}" == "broken" ]]; then
		eerror "You're trying to merge stuff marked as BROKEN by upstream"
		eerror "You WILL have problems with it"
	elif [[ "${evcs_category}" == "old" ]]; then
		ewarn "You're trying to merge stuff marked as OLD by upstream"
		ewarn "It is outdated, badly supported or don't work at all."
		ewarn "You have been warned!"
	fi

	if [[ ${E_STATE} == "snap" ]] ; then
		ewarn "Please do not contact the E or Gentoo team about bugs in this overlay."
		ewarn "Send reports to NightNord@gmail.com"
		ewarn "Remember, that this is live code, so there is a high probability"
		ewarn "of problems"
	elif [[ ${E_STATE} == "live" ]] ; then
		eerror "This is a *LIVE* ebuild."
		eerror "That means there are *NO* promises it will work."
		eerror "If something fails - *FIX THE CODE YOURSELF*"
		eerror "before reporting any issues."
	fi
}

enlightenment_die() {
	enlightenment_warning_msg
	die "$@"$'\n\n'"Do *NOT* send reports to E or Gentoo teams! Send them to NightNord@gmail.com instead"
}

enlightenment_pkg_setup() {
	enlightenment_warning_msg
}

# the stupid gettextize script prevents non-interactive mode, so we hax it
#gettext_modify() {
#	use nls || return 0
#	cp $(type -P gettextize) "${T}"/ || die "could not copy gettextize"
#	sed -i \
#		-e 's:read dummy < /dev/tty::' \
#		"${T}"/gettextize
#}

enlightenment_src_unpack() {
	if [[ ${E_STATE} == "live" ]] ; then
		if [[ -n "${ECVS_MODULE}" ]]; then
			cvs_src_unpack
		else
			subversion_src_unpack
		fi
	else
		unpack ${A}
	fi
#
#	gettext_modify
#
	if grep -q AM_GNU_GETTEXT_VERSION configure.*; then
		local autopoint_log_file="${T}/autopoint.$$"

		ebegin "Running autopoint"

			autopoint -f &> "${autopoint_log_file}"

		if ! eend $?; then
			ewarn "Autopoint failed"
			ewarn "Log in ${autopoint_log_file}"
			ewarn "(it makes sense only when compile fails afterwards)"

			if grep -qi 'cvs program not found' "${autopoint_log_file}"; then
				ewarn "This error seems to be due missing CVS"
				ewarn "(it's usage hardcoded into autopoint code)"
				ewarn "Please 'emerge cvs' if compilation will fail"
				ebeep 3
			fi
		fi
	fi

	# someone forgot these very useful files...

	touch README ABOUT-NLS
	for bad_file in autom4te.cache aclocal.m4 ltmain.sh; do
		[ -e "${bad_file}" ] && rm -Rf "${bad_file}"
	done

	[ -d "m4" ] && AT_M4DIR="m4"
	eautoreconf			|| enlightenment_die "eautoreconf failed"

	epunt_cxx
}

enlightenment_src_compile() {
	# gstreamer sucks, work around it doing stupid stuff
	export GST_REGISTRY="${S}/registry.xml"

	econf ${MY_ECONF}	|| enlightenment_die "econf failed"
	emake				|| enlightenment_die "emake failed"

	if use doc && [[ -s gendoc ]]; then
		chmod a+rx gendoc

		./gendoc		|| enlightenment_die "gendoc failed"
	fi
}

enlightenment_src_install() {
	emake install DESTDIR="${D}" || enlightenment_die

	find "${D}" -name '.svn' -type d -exec rm -rf '{}' \; 2>/dev/null

	dodoc AUTHORS ChangeLog NEWS README TODO ${EDOCS}; 

	use doc && [[ -d doc ]] && dohtml -r doc/*
}

enlightenment_pkg_postinst() {
	enlightenment_warning_msg
}

EXPORT_FUNCTIONS pkg_setup src_unpack src_compile src_install pkg_postinst
