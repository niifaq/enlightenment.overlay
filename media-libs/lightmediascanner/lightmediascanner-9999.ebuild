# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc nls"

EGIT_REPO_URI="git://git.profusion.mobi/lightmediascanner.git"

inherit autotools git

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
	AT_M4DIR="-I m4"
	eautoreconf
}

src_configure() {
	econf \
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
		$(use_enable flac)
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
}
