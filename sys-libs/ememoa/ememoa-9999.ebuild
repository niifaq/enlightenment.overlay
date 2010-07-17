# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
E_EXTERNAL="yes"
inherit subversion efl

ESVN_REPO_URI="http://ememoa.googlecode.com/svn/trunk"

DESCRIPTION="Fast memory pool allocator"
HOMEPAGE="http://code.google.com/p/ememoa/"
LICENSE="BSD"
SLOT="0"

if [[ "${PV}" != "9999" ]]; then
	KEYWORDS="~amd64 ~x86"
fi

IUSE="doc threads"

RDEPEND=""
DEPEND="
	dev-util/pkgconfig
	doc? ( app-doc/doxygen )"

src_configure() {
	MY_ECONF="
	  $(use_enable threads pthread)
	"
	use doc || MY_ECONF+=" DOXYGEN=/bin/true"

	efl_src_configure
}

src_compile() {
	efl_src_compile

	if use doc; then
		(cd doc && doxygen doc.doxy) || die "doxygen doc.doxy"
	fi
}

src_install() {
	efl_src_install

	if use doc; then
		dohtml doc/doxygen_html/* || die "docs install failed"
	fi
}
