# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
E_PKG_IUSE="static-libs"
ESVN_SUB_PROJECT="PROTO"

inherit efl

DESCRIPTION="An light-weight image viewer based on Elementary"

IUSE="ethumb experimental"

DEPEND=">=dev-libs/ecore-9999
	>=media-libs/evas-9999
	>=media-libs/edje-9999
	>=x11-wm/enlightenment-9999
	ethumb? ( >=media-libs/ethumb-9999 )
	>=media-libs/elementary-9999"

RDEPEND="${DEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_enable ethumb)
		$(use_enable experimental)
	"

	efl_src_configure
}
