# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
E_PKG_IUSE="examples"
E_CYTHON="1"
ESVN_SUB_PROJECT="BINDINGS/python"

inherit efl

DESCRIPTION="Python bindings for Evas"
HOMEPAGE="http://www.enlightenment.org"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""

IUSE=""

RDEPEND=">=dev-libs/efl-9999"

DEPEND="${RDEPEND}"
