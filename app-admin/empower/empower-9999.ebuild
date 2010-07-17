# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="nls"

inherit efl eutils

DESCRIPTION="graphical sudo application"

IUSE=""

DEPEND="dev-libs/ecore
	media-libs/evas
	media-libs/edje
	media-libs/elementary"

RDEPEND="${DEPEND}"
src_configure() {
	MY_ECONF="--disable-ewl"

	efl_src_configure
}
