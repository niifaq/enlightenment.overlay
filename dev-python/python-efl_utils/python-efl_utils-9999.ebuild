# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
E_PKG_IUSE="examples"
E_PYTHON="yes"
ESVN_SUB_PROJECT="BINDINGS/python"
E_WANT_AUTOTOOLS="no"

inherit efl distutils

DESCRIPTION="Utilities to work with EFL"
HOMEPAGE="http://www.enlightenment.org"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""

IUSE=""

RDEPEND="
	>=dev-python/python-evas-9999
	>=dev-python/python-ecore-9999"

src_configure()
{
	:
}
