# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils flag-o-matic

DESCRIPTION="Enna Media Center"
HOMEPAGE="http://enna.geexbox.org/"
SRC_URI="http://${PN}.geexbox.org/releases/${P}.tar.bz2"

IUSE="nls cdda cddb dvd curl hal lirc upnp xml X"

RDEPEND=">=media-libs/libplayer-1.0.0
	>=media-libs/libvalhalla-1.0.0
	>=dev-libs/eina-0.9.9.063
	>=dev-libs/eet-1.2.2
	>=x11-libs/evas-0.9.9.063
	>=x11-libs/ecore-0.9.9.063
	>=dev-libs/embryo-0.9.9.063
	>=media-libs/edje-0.9.93.063
	>=x11-libs/elementary-0.6.0.063
	>=dev-libs/efreet-0.5.0.063
	>=x11-libs/e_dbus-0.5.0.063
	nls? ( sys-devel/gettext )
	cddb? ( media-libs/libcddb )
	xrandr? ( x11-libs/libXrandr )
	xml? ( dev-libs/libxml2 )
	upnp? ( net-libs/gupnp )
	curl? ( net-misc/curl )
	lirc? ( app-misc/lirc )
	hal? ( sys-apps/hal )
"

DEPEND="${RDEPEND}"

#TODO:
#an interface to VDR via SVDRP protocol
#libsvdrp (http://hg.geexbox.org/libsvdrp/)

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""

src_configure() {
	local myconf="
		--enable-activity-tv
		--enable-activity-games
		--enable-browser-podcasts
		--enable-browser-shoutcast
		--enable-browser-netstreams
		$(use_enable nls)
		$(use_enable cddb libcddb)
		$(use_enable curl libcurl)
		$(use_enable hal volume-hal)
		$(use_enable dvd browser-dvd)
		$(use_enable cdda browser-cdda)
		$(use_enable upnp browser-upnp)
		$(use_enable xml libxml2)
		$(use_enable X libxrandr)
	"

	econf ${myconf} || die "configure failed"
}

src_install() {
	 emake DESTDIR="${D}" install || die "install failed"

	dodoc AUTHORS README
}
