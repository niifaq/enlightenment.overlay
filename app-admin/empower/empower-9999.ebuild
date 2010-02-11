# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit enlightenment eutils

DESCRIPTION="graphical sudo application"

IUSE=""

DEPEND="dev-libs/eet
	x11-libs/ecore
	x11-libs/evas
	media-libs/edje
	x11-libs/ewl"

RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-missing-aclocal_amflags.patch

	enlightenment_src_prepare
}
