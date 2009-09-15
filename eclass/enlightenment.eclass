# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
#
# Original Author:	vapier@gentoo.org
# Modified by:		Andrian Nord <nightnord@niifaq.ru>
# Modified by:		Vadim Efimov <evadim@evadim.ru>
# Modified by:		Peter Volkov <pva@gentoo.org>

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
#		SRC_URI  cvs/svn/etc... up
#		S        $WORKDIR/$E_S_APPEND
#
# Overrides:
#	KEYWORDS    EKEY_STATE
#	SRC_URI     EURI_STATE
#	S           EURI_STATE

#E_LIVE_DEFAULT_CVS="cvs.sourceforge.net:/cvsroot/enlightenment"
E_LIVE_SERVER_DEFAULT_CVS="anoncvs.enlightenment.org:/var/cvs/e"
E_LIVE_SERVER_DEFAULT_SVN="http://svn.enlightenment.org/svn/e/trunk"

E_STATE="release"

if [[ ${PV/9999} != ${PV} ]] ; then
	E_STATE="live"
	PROPERTIES="live"

	# Force live package's to use autotools by default, because there is no
	# warranty, that configure will be up-to-date, if it will be, anyway
	: ${WANT_AUTOMAKE:=yes}

	[[ -n ${E_LIVE_OFFLINE} ]] && ESCM_OFFLINE="yes"

	# force people to opt-in to legacy cvs
	if [[ -n ${ECVS_MODULE} ]] ; then
		ECVS_SERVER=${ECVS_SERVER:-${E_LIVE_SERVER_DEFAULT_CVS}}
		E_LIVE_SOURCE="cvs"
		E_S_APPEND=${ECVS_MODULE}
		inherit cvs
	else
		ESVN_URI_APPEND=${ESVN_URI_APPEND:-${PN}}
		ESVN_PROJECT="enlightenment/${ESVN_SUB_PROJECT}"
		ESVN_REPO_URI=${ESVN_SERVER:-${E_LIVE_SERVER_DEFAULT_SVN}}/${ESVN_SUB_PROJECT}/${ESVN_URI_APPEND}
		E_S_APPEND=${ESVN_URI_APPEND}
		E_LIVE_SOURCE="svn"
		inherit subversion
	fi
elif [[ -n ${E_SNAP_DATE} ]] ; then
	E_STATE="snap"
else
	E_STATE="release"
fi

# We should use autotools only when there is need for this
# Only exception live packages (look above)
: ${WANT_AUTOMAKE:=no}

# Some packages may not work with eautoreconf, make them possible to disable it
# by defining WANT_AUTOMAKE=no. Otherwise any other value then "yes" will be used
# as actual version of automake to use.
if [[ "${WANT_AUTOMAKE}" != "no" ]]; then
	if [[ "${WANT_AUTOMAKE}" == "yes" ]]; then
		WANT_AUTOCONF=${E_WANT_AUTOCONF:-latest}
		WANT_AUTOMAKE=${E_WANT_AUTOMAKE:-latest}
	fi

	inherit autotools
fi

DESCRIPTION="A DR17 production"
HOMEPAGE="http://www.enlightenment.org/"
case ${EURI_STATE:-${E_STATE}} in
	release) SRC_URI="mirror://sourceforge/enlightenment/${P}.tar.gz";;
	snap)    SRC_URI="http://download.enlightenment.org/snapshots/${E_SNAP_DATE}/${P}.tar.bz2";;
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

# gettext (via `autopoint`) needs to run cvs #245073
[[ ${E_STATE} == "live" ]] && DEPEND="${DEPEND} dev-util/cvs"

case ${EURI_STATE:-${E_STATE}} in
	release) S=${WORKDIR}/${P};;
	snap)    S=${WORKDIR}/${P};;
	live)    S=${WORKDIR}/${E_S_APPEND};;
esac

enlightenment_warning_msg() {
	if [[ ${E_STATE} == "snap" ]] ; then
		ewarn "Please do not contact the E team about bugs in Gentoo."
		ewarn "Only contact enlightenment@gentoo.org via e-mail or bugzilla."
		ewarn "Remember, this stuff is DEV only code so dont cry when"
		ewarn "I break you :)."
	elif [[ ${E_STATE} == "live" ]] ; then
		eerror "This is a LIVE SOURCES ebuild."
		eerror "That means there are NO promises it will work."
		eerror "If it fails to build, FIX THE CODE YOURSELF"
		eerror "before reporting any issues."
	fi
}

enlightenment_die() {
	enlightenment_warning_msg
	die "$@"$'\n'"!!! SEND BUG REPORTS TO enlightenment@gentoo.org NOT THE E TEAM"
}

enlightenment_pkg_setup() {
	: enlightenment_warning_msg
}

# the stupid gettextize script prevents non-interactive mode, so we hax it
gettext_modify() {
	use nls || return 0
	cp $(type -P gettextize) "${T}"/ || die "could not copy gettextize"
	sed -i \
		-e 's:read dummy < /dev/tty::' \
		"${T}"/gettextize
}

enlightenment_src_unpack() {
	if [[ ${E_STATE} == "live" ]] ; then
		case ${E_LIVE_SOURCE} in
			cvs) cvs_src_unpack;;
			svn) subversion_src_unpack;;
			*)   die "eek!";;
		esac
	else
		unpack ${A}
	fi

	cd "${S}"

	[[ "${EAPI}" -lt 2 ]] && prepare_sources
}

prepare_sources() {
	gettext_modify

	[[ -s gendoc ]] && chmod a+rx gendoc

	if [[ -e configure.ac || -e configure.in ]] && [[ "${WANT_AUTOMAKE}" != "no" ]]; then
		if grep -qE '^[[:space:]]*AM_GNU_GETTEXT_VERSION' configure.*; then
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

		# someone forgot these very useful file... 
		touch README

		eautoreconf
	fi
}

enlightenment_src_compile() {
	# gstreamer sucks, work around it doing stupid stuff
	export GST_REGISTRY="${S}/registry.xml"

	if [[ "${EAPI}" != 2 ]] && [[ -x ${ECONF_SOURCE:-.}/configure ]]; then
		econf ${MY_ECONF}
	fi

	emake || enlightenment_die "emake failed"

	use doc && [[ -x ./gendoc ]] && { ./gendoc || enlightenment_die "gendoc failed" ; }
}

enlightenment_src_install() {
	emake install DESTDIR="${D}" || enlightenment_die

	find "${D}" '(' -name 'CVS' -o -name '.svn' -o -name '.git' ')' -type d -exec rm -rf '{}' \; 2> /dev/null

	for doc in AUTHORS ChangeLog NEWS README TODO ${EDOCS}; do
		[[ -f ${doc} ]] && dodoc ${doc}
	done

	use doc && [[ -d doc ]] && dohtml -r doc/*
}

enlightenment_pkg_postinst() {
	: enlightenment_warning_msg
}

EXPORT="pkg_setup src_unpack src_compile src_install pkg_postinst"

if [[ "${EAPI}" -ge 2 ]]; then
	enlightenment_src_configure() {
		if [[ -x ${ECONF_SOURCE:-.}/configure ]]; then
			econf ${MY_ECONF}
		fi
	}

	enlightenment_src_prepare() {
		prepare_sources
	}

	EXPORT="${EXPORT} src_configure src_prepare"
fi

EXPORT_FUNCTIONS ${EXPORT}
