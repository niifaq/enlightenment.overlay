# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
E_PKG_IUSE="doc"
ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="E object library"

IUSE="static-libs"

RDEPEND="
	>=dev-libs/eina-9999
"
#	elementary? ( >=media-libs/elementary-9999 )

DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_enable doc)"
	efl_src_configure
}
