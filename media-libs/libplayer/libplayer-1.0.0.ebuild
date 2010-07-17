# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc nls"

inherit eutils flag-o-matic

DESCRIPTION="A multimedia A/V abstraction layer API"
HOMEPAGE="http://libplayer.geexbox.org/"
SRC_URI="http://${PN}.geexbox.org/releases/${P}.tar.bz2"

IUSE="doc debug gstreamer mplayer python vlc xine X"

RDEPEND="
	gstreamer? ( media-libs/gstreamer:0.10 )
	mplayer? ( media-video/mplayer
		X? ( x11-libs/libX11 )
		)
	vlc?	( media-video/vlc )
	python?	( dev-lang/python )
	xine?	( media-libs/xine-lib
		X? ( x11-libs/libX11 )
		)"

DEPEND="doc?	( >=app-doc/doxygen-1.5.5 )
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
		$(use_enable gstreamer)
		$(use_enable mplayer)
		$(use_enable python binding-python)
		$(use_enable vlc)
		$(use_enable xine)
	"
	if use mplayer || use xine; then
		myconf="${myconf} $(use_enable X x11)"
	elif use X; then
		ewarn "X11 support is useless without mplayer or xine backends"
		ewarn "Disabeling it by now"
	fi

	econf ${myconf} --disable-strip || die "configure failed"
}

src_install() {
	 emake -j1 DESTDIR="${D}" install || die "install failed"

	dodoc AUTHORS README
}
