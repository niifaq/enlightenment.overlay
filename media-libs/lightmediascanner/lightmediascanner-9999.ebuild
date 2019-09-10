# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"
EFL_USE_GIT="yes"
EFL_GIT_BASE_PATH="https://github.com"
EFL_GIT_REPO_CATEGORY="profusion"

inherit efl

DESCRIPTION="LightMediaScanner"
HOMEPAGE="http://lms.garage.maemo.org/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""
IUSE="+asf flac +id3 jpeg mp4 ogg +playlist png real static-libs"

DEPEND="mp4? ( media-libs/libmp4v2 )
	png? ( media-libs/libpng )
	jpeg? ( virtual/jpeg )
	flac? ( media-libs/flac )
	ogg? ( media-libs/libogg )
"
RDEPEND="dev-db/sqlite"

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
