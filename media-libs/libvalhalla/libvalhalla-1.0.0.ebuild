# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc nls"

inherit eutils flag-o-matic

DESCRIPTION="A media scanner library written in C"
HOMEPAGE="http://libvalhalla.geexbox.org/"
SRC_URI="http://${PN}.geexbox.org/releases/${P}.tar.bz2"

IUSE="curl exif doc debug ffmpeg"

RDEPEND=""

DEPEND="	doc? ( >=app-doc/doxygen-1.5.5 )
		exif? ( media-libs/libexif )
		ffmpeg? ( media-video/ffmpeg )
		net-misc/curl
		dev-db/sqlite:3
		media-libs/libnfo
		dev-libs/libgcrypt
		${RDEPEND}"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_prepare() {
	#FIXME: we really need more sophisticated patch, which will really fix
	#build-system without just shutting it up =)
	epatch "${FILESDIR}"/"${P}-fix-configure-exit-on-unknown-option.patch"
}

src_configure() {
	local myconf="
		$(use_enable doc)
		$(use_enable debug)
		$(use_enable exif grabber-exif)
		$(use_enable ffmpeg grabber-ffmpeg)
	"
	econf ${myconf} || die "configure failed"
}

src_install() {
	 emake -j1 DESTDIR="${D}" install || die "install failed"

	dodoc AUTHORS README
}
