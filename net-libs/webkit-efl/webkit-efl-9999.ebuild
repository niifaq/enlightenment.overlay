# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1
EGIT_REPO_URI="git://code.staikos.net/webkit"
EGIT_BRANCH="kenneth/efl-port"

inherit autotools git

DESCRIPTION="Open source web browser engine"
HOMEPAGE="http://codeposts.blogspot.com"

LICENSE="LGPL-2 LGPL-2.1 BSD"
SLOT="0"
IUSE="coverage debug gstreamer sqlite svg +xslt"

RDEPEND=">=x11-libs/evas-9999
	>=x11-libs/ecore-9999
	>=media-libs/edje-9999
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
	!net-libs/webkit-gtk
	"

DEPEND="${RDEPEND}
	dev-util/gperf
	dev-util/pkgconfig
	virtual/perl-Text-Balanced"

src_unpack() {
	git_src_unpack

	cd "${S}"

	AT_M4DIR="autotools"

	eautoreconf
}

src_compile() {
	# It doesn't compile on alpha without this LDFLAGS
	use alpha && append-ldflags "-Wl,--no-relax"

	econf \
		--with-port=efl \
		--disable-web-workers \
		$(use_enable sqlite database) \
		$(use_enable sqlite icon-database) \
		$(use_enable sqlite dom-storage) \
		$(use_enable sqlite offline-web-applications) \
		$(use_enable svg) \
		$(use_enable debug) \
		$(use_enable xslt) \
		$(use_enable coverage) \
		$(use_enable gstreamer video) \
		${myconf} \
		|| die "configure failed"

	emake -f GNUmakefile || ewebkit_die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
}
