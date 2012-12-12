# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 efl

DESCRIPTION="A minesweeper game base on efl"
HOMEPAGE="http://elemines.sourceforge.net/"
EGIT_REPO_URI="git://${PN}.git.sourceforge.net/gitroot/${PN}/${PN}"

LICENSE="GPL-2 OFL"
SLOT="0"

IUSE=""

RDEPEND=">=dev-libs/efl-9999
	>=media-libs/edje-9999
	>=media-libs/elementary-9999
"
DEPEND="${DEPEND}"

src_unpack() {
	git-2_src_unpack
}

src_prepare() {
	sed -i -e "s|Applications;||g" data/desktop/elemines.desktop || die
	sed -i -e "/packaging/d" configure.ac || die
	sed -i -e "s|packaging ||g" Makefile.am || die
	efl_src_prepare
}
