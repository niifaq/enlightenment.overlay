# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit efl

ESVN_REPO_URI="http://e17mods.googlecode.com/svn/trunk/MODULES/edgar"
DESCRIPTION="E17 Edgar Gadgets Loader"
HOMEPAGE="http://code.google.com/p/e17mods/wiki/Edgar"

LICENSE="GPL-2"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"

src_unpack() {

	AT_M4DIR="-I m4"

	efl_src_unpack

}
