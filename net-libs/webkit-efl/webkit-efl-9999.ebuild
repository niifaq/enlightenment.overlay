# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-libs/webkit-gtk/webkit-gtk-0_p40220.ebuild,v 1.2 2009/01/31 21:51:04 jokey Exp $

EGIT_REPO_URI="git://code.staikos.net/webkit"
EGIT_BRANCH="kenneth/efl-port"
inherit autotools git

DESCRIPTION="Open source web browser engine"
HOMEPAGE="http://www.webkit.org/"

LICENSE="LGPL-2 LGPL-2.1 BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~sparc ~x86"
#IUSE="coverage debug gstreamer pango soup sqlite svg xslt"
IUSE="pango soup sqlite xslt"

RDEPEND="=x11-libs/evas-9999
	=x11-libs/ecore-9999
	=media-libs/edje-9999
	>=x11-libs/cairo-1.6.4
	>=media-libs/fontconfig-2.4.2
	media-libs/freetype
	dev-libs/libxml2
	sqlite? ( >=dev-db/sqlite-3 )
	gstreamer? (
		    >=media-libs/gst-plugins-base-0.10
		)
	soup? ( >=net-libs/libsoup-2.23.1 )
	xslt? ( >=dev-libs/libxslt-1.1.7 )
	pango? ( >=x11-libs/pango-1.0 )
	"

DEPEND="${RDEPEND}
	dev-util/gperf
	dev-util/pkgconfig
	virtual/perl-Text-Balanced"

src_unpack() {
	git_src_unpack

	AT_M4DIR="autotools"

	eautoreconf
}

src_compile() {
	# It doesn't compile on alpha without this LDFLAGS
	use alpha && append-ldflags "-Wl,--no-relax"

	local myconf=
		use pango && myconf="${myconf} --with-font-backend=pango"
		use soup && myconf="${myconf} --with-http-backend=soup"

	econf \
		--with-port=efl \
		--enable-web-workers=no \
		$(use_enable sqlite database) \
		$(use_enable sqlite icon-database) \
		$(use_enable sqlite dom-storage) \
		$(use_enable sqlite offline-web-applications) \
#		$(use_enable gstreamer video) \
#		$(use_enable svg) \
#		$(use_enable debug) \
		$(use_enable xslt) \
#		$(use_enable coverage) \
		${myconf} \
		|| die "configure failed"

	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
}
