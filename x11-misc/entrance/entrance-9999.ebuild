# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-misc/entrance/entrance-9999.ebuild,v 1.12 2006/12/08 22:54:00 uberlord Exp $

inherit enlightenment eutils

DESCRIPTION="next generation of Elogin, a login/display manager for X"
HOMEPAGE="http://xcomputerman.com/pages/entrance.html"

IUSE="pam"

RDEPEND="x11-libs/libXau
	pam? ( virtual/pam )
	>=x11-libs/evas-9999
	>=x11-libs/ecore-9999
	>=media-libs/edje-9999
	>=x11-libs/esmart-9999
	>=dev-libs/efreet-9999"
DEPEND="${RDEPEND}
	x11-libs/libXt"

src_compile() {
	if use pam ; then
		export MY_ECONF="--with-auth-mode=pam"
	else
		export MY_ECONF="--with-auth-mode=shadow"
	fi
	MY_ECONF="${MY_ECONF} $(use_enable pam)"
	enlightenment_src_compile
}

src_install() {
	enlightenment_src_install
	use pam || rm -r "${D}"/etc/pam.d
	rm -rf "${D}"/etc/init.d
	exeinto /usr/share/entrance
	doexe data/config/build_config.sh || die
}

pkg_preinst() {
	if [[ -d ${ROOT}/etc/X11/Sessions ]] ; then
		"${D}"/usr/share/entrance/build_config.sh \
			-c "${D}"/etc/entrance_config.cfg \
			-d "${ROOT}"/etc/X11/Sessions
	fi
}
