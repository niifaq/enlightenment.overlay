# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_REPO_URI="http://e17mods.googlecode.com/svn/GADGETS/calculator"

inherit subversion

DESCRIPTION="Functional calculator completly made in edje"
HOMEPAGE="http://e17mods.googlecode.com/svn/trunk/GADGETS/calculator"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="media-libs/edje
		dev-libs/embryo"

RDEPEND="x11-plugins/edgar"

src_compile() {
		emake || die "emake failed"
}

src_install() {
		dodir /usr/share/enlightenment/data/gadgets
		insinto /usr/share/enlightenment/data/gadgets
		doins calculator.edj
}
