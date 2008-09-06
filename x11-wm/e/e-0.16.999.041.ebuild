# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-wm/e/e-9999.ebuild,v 1.7 2006/10/22 05:44:35 vapier Exp $

inherit enlightenment

MY_P="enlightenment-${PV}"
SRC_URI="http://download.enlightenment.org/snapshots/2007-08-26/${MY_P}.tar.gz"

DESCRIPTION="the e17 window manager"

IUSE="pam dbus"

RDEPEND=">=x11-libs/ecore-0.9.9.041
	>=media-libs/edje-0.5.0.041
	>=dev-libs/eet-0.9.10.041
	>=dev-libs/efreet-0.0.3.006
	>=dev-libs/embryo-0.9.1.041
	>=x11-libs/evas-0.9.9.041
	pam? ( sys-libs/pam )
	dbus? ( x11-libs/e_dbus )"
DEPEND="${RDEPEND}
	x11-proto/xproto
	sys-devel/libtool"

S=${WORKDIR}/${MY_P}

pkg_setup() {
	if ! built_with_use x11-libs/evas png ; then
		eerror "Re-emerge evas with USE=png"
		die "Re-emerge evas with USE=png"
	fi
	enlightenment_pkg_setup
}
