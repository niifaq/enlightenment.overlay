# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit efl eutils

DESCRIPTION="graphical sudo application"

IUSE=""

DEPEND="dev-libs/ecore
	media-libs/evas
	media-libs/edje
	media-libs/elementary"

RDEPEND="${DEPEND}"

E_NO_DOC="yes"

src_prepare() {
	AT_M4DIR="-I m4"

	efl_src_prepare
}

src_configure() {
	MY_ECONF="--disable-ewl"

	efl_src_configure
}
