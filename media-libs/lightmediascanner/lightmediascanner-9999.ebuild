# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EGIT_REPO_URI="git://git.profusion.mobi/lightmediascanner.git"

inherit autotools git

DESCRIPTION="LightMediaScanner"
HOMEPAGE="http://lms.garage.maemo.org/"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""
IUSE="mp4 png jpeg flac ogg"

DEPEND="mp4? ( media-libs/libmp4v2 )
	png? ( media-libs/libpng )
	jpeg? ( media-libs/jpeg )
	flac? ( media-libs/flac )
	ogg? ( media-libs/libogg )
"
RDEPEND="dev-db/sqlite
	 dev-util/git"

src_unpack() {
	git_src_unpack

	cd "${S}"

	AT_M4DIR="-I m4"

	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
}
