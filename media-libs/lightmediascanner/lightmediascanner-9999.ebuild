# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

EGIT_REPO_URI="git://git.profusion.mobi/lightmediascanner.git"

inherit git efl

DESCRIPTION="LightMediaScanner"
HOMEPAGE="http://lms.garage.maemo.org/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""
IUSE="+asf flac +id3 jpeg mp4 ogg +playlist png real static-libs"

DEPEND="mp4? ( media-libs/libmp4v2 )
	png? ( media-libs/libpng )
	jpeg? ( media-libs/jpeg )
	flac? ( media-libs/flac )
	ogg? ( media-libs/libogg )
"
RDEPEND="dev-db/sqlite"

src_unpack() {
	git_src_unpack
	cd "${S}"
}

src_prepare() {
	AT_M4DIR="-I m4"
	efl_src_prepare
}

src_configure() {
	MY_ECONF="
		--disable-static \
		--enable-video-dummy \
		--enable-audio-dummy \
		$(use_enable jpeg) \
		$(use_enable png) \
		$(use_enable playlist m3u) \
		$(use_enable ogg) \
		$(use_enable playlist pls) \
		$(use_enable asf) \
		$(use_enable real rm) \
		$(use_enable mp4) \
		$(use_enable id3) \
		$(use_enable flac)"

	efl_src_configure
}
