# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="core"
inherit efl

DESCRIPTION="Loaders for Evas using 'generic' module"
HOMEPAGE="http://www.enlightenment.org"

IUSE="gstreamer raw svg postscript pdf"

RDEPEND=">=dev-libs/efl-9999
	pdf? ( app-text/poppler )
	postscript? ( app-text/libspectre )
	gstreamer? ( media-libs/gstreamer media-libs/gst-plugins-base )
	raw? ( media-libs/libraw )
	svg? ( gnome-base/librsvg x11-libs/cairo )
	"

DEPEND=${RDEPEND}

src_configure() {
	export MY_ECONF="
		$(use_enable gstreamer)
		$(use_enable pdf poppler)
		$(use_enable raw libraw)
		$(use_enable postscript spectre)
		$(use_enable svg)
	"
	efl_src_configure
}
