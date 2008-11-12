# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_REPO_URI="http://e17mods.googlecode.com/svn/trunk/GADGETS/calculator"
ESVN_FETCH_CMD="svn checkout"

inherit subversion

DESCRIPTION="Functional calculator completly made in edje"
HOMEPAGE="http://e17mods.googlecode.com/svn/trunk/GADGETS/calculator"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="x11-plugins/edgar"

src_compile() {
		cd "${S}"
		emake || die "emake failed"
}

src_install() {
		dodir /usr/share/enlightenment/data/gadgets
		insinto /usr/share/enlightenment/data/gadgets
		doins calculator.edj
}
