# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
E_PKG_IUSE="doc"
ESVN_URI_APPEND="IN-EFL/eo"
inherit efl

DESCRIPTION="E object library"

IUSE="static-libs"

RDEPEND="
	>=dev-libs/eina-9999
"
#	elementary? ( >=media-libs/elementary-9999 )

DEPEND="
	!dev-libs/efl
	${RDEPEND}
"

src_configure() {
	export MY_ECONF="
		$(use_enable doc)"
	efl_src_configure
}
