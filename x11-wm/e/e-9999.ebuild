# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-wm/e/e-9999.ebuild,v 1.7 2006/10/22 05:44:35 vapier Exp $

EVCS_MODULE="e"
inherit enlightenment

DESCRIPTION="the e17 window manager"

IUSE="pam"

RDEPEND=">=x11-libs/ecore-9999
	>=media-libs/edje-9999
	>=dev-libs/eet-9999
	>=dev-libs/efreet-9999
	>=dev-libs/embryo-9999
	>=x11-libs/evas-9999
	!x86-fbsd? ( pam? ( sys-libs/pam ) )
	>=x11-libs/e_dbus-9999"

DEPEND="${RDEPEND}
	x11-proto/xproto
	sys-devel/libtool
	dev-libs/eina"

pkg_setup() {
	if ! built_with_use x11-libs/evas png ; then
		eerror "Re-emerge evas with USE=png"
		die "Re-emerge evas with USE=png"
	fi
	enlightenment_pkg_setup
}
