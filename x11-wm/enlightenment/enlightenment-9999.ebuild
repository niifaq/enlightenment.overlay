# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_URI_APPEND="e"
inherit enlightenment

DESCRIPTION="the e17 window manager"

SLOT="0.17"
IUSE="pam exchange"

RDEPEND=">=x11-libs/ecore-9999
		>=media-libs/edje-9999
		>=dev-libs/eet-9999
		>=dev-libs/efreet-9999
		>=dev-libs/embryo-9999
		>=dev-libs/eina-9999
		>=x11-libs/evas-9999[png]
		pam? ( sys-libs/pam )
		>=x11-libs/e_dbus-9999
		exchange? ( >=app-misc/exchange-9999 )"

DEPEND="${RDEPEND}
		x11-proto/xproto
		sys-devel/libtool"

pkg_setup() {
	enlightenment_pkg_setup
}

src_compile() {
	enlightenment_src_compile
}
