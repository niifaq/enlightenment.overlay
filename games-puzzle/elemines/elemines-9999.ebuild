# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 efl

DESCRIPTION="A minesweeper game base on efl"
HOMEPAGE="http://elemines.sourceforge.net/"
EGIT_REPO_URI="git://git.code.sf.net/p/${PN}/code"

LICENSE="GPL-2 OFL"
SLOT="0"

IUSE=""

RDEPEND=">=dev-libs/efl-9999
	>=media-libs/elementary-9999
"
DEPEND="${DEPEND}"

src_unpack() {
	git-2_src_unpack
}