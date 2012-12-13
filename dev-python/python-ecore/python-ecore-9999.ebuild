# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
E_PKG_IUSE="examples"
E_CYTHON="1"
ESVN_SUB_PROJECT="BINDINGS/python"

inherit efl

DESCRIPTION="Python bindings for Ecore"
HOMEPAGE="http://www.enlightenment.org"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""

IUSE="+X"

RDEPEND=">=dev-libs/efl-9999[X?]"

# python-evas is just required to build as it includes some useful header files
DEPEND="
	>=dev-python/python-evas-9999
	${RDEPEND}"

src_configure() {

	export MY_ECONF="
	  ${MY_ECONF}
	  $(use_enable X ecore-x)
	  --enable-ecore-evas
	  --enable-ecore-file
	"

	efl_src_configure
}