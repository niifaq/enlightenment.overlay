# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON="2.4"
ESVN_SUB_PROJECT="PROTO"
inherit enlightenment python distutils

DESCRIPTION="An On screen keyboard written in Python-EFL"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/edje"

RDEPEND="${DEPEND}"


src_unpack() {
	enlightenment_src_unpack
}

src_compile() {
	distutils_src_compile
}

src_install() {
	distutils_src_install
}
