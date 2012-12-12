# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

ESVN_SUB_PROJECT="PROTO"
inherit efl

#E_PKG_IUSE="doc nls"

DESCRIPTION="A library for 2D effects"

IUSE="+test-gui"

DEPEND="
	>=dev-libs/efl-9999
	test-gui? ( >=media-libs/elementary-9999 )
"

DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_enable test-gui tests)
	"
efl_src_configure
}
