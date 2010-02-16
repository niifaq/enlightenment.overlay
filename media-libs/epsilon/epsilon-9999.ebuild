# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"

inherit enlightenment

DESCRIPTION="nice thumbnail generator"

IUSE="xine"

DEPEND=">=media-libs/imlib2-9999
	>=media-libs/libpng-1.2.0
	>=media-libs/edje-9999
	>=media-libs/evas-9999
	>=dev-libs/ecore-9999
	dev-lang/perl
	xine? ( >=media-libs/xine-lib-1.1.1 )"

RDEPEND="${DEPEND}"

src_compile() {
	export MY_ECONF="
		$(use_enable xine thumbnailer-xine) \
	"

	enlightenment_src_compile
}
