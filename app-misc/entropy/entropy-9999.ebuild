# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="a File Manager For e17"

IUSE=""

DEPEND="media-libs/epsilon
	x11-libs/ewl
	x11-libs/etk
	sys-fs/evfs
	media-libs/libextractor
	>=media-libs/imlib2-1.2.1
	>=media-libs/libpng-1.2.8
	>=x11-libs/ecore-0.9.9"

RDEPEND="${DEPEND}"

src_compile() {
	export MY_ECONF="
		--enable-plugin-extractor
	"
	enlightenment_src_compile
}
