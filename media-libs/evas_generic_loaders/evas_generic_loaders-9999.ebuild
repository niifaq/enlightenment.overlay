# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit efl

DESCRIPTION="Generic loaders for evas"
HOMEPAGE="http://www.enlightenment.org/pages/evas.html"

IUSE="gstreamer raw +svg ps pdf"

DEPEND=">=dev-libs/eina-9999
	pdf? ( <=app-text/poppler-0.20 )
	ps? ( app-text/libspectre )
	gstreamer? ( media-libs/gstreamer media-libs/gst-plugins-base )
	raw? ( media-libs/libraw )
	svg? ( gnome-base/librsvg x11-libs/cairo )
	"
RDEPEND=${DEPEND}

src_configure() {
	export MY_ECONF="
		$(use_enable gstreamer)
		$(use_enable pdf poppler)
		$(use_enable raw libraw)
		$(use_enable ps spectre)
		$(use_enable svg)
	"
	efl_src_configure
}
