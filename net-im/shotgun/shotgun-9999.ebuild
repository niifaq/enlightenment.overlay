# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="xmpp client/library which uses EFL"

LICENSE="BSD-2"
IUSE="azy dbus libnotify"

DEPEND="
	>=dev-libs/efl-9999
	>=media-libs/edje-9999
	>=media-libs/elementary-9999
	>=dev-libs/efx-9999
	azy? ( >=net-libs/azy-9999 )
	dbus? ( >=dev-libs/e_dbus-9999 )
	libnotify? ( >=dev-libs/e_dbus-9999[libnotify] )"

RDEPEND="${DEPEND}"

src_configure() {
	export MY_ECONF="
	$(use_enable azy)
	$(use_enable dbus edbus)
	$(use_enable libnotify enotify)
	"

	efl_src_configure
}

pkg_postinst() {
	einfo "Tip: if your XMPP server doesn't have valid SSL certificate,"
	einfo "you should add --noverify command line option to ignore checks"
}
