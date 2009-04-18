# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

inherit enlightenment

DESCRIPTION="video libraries for e17"

IUSE="gstreamer +xine"

DEPEND="
	>=x11-libs/evas-9999
	>=media-libs/edje-9999
	>=x11-libs/ecore-9997
	!sh? ( !mips? ( xine? ( >=media-libs/xine-lib-1.1.1 ) ) )

	gstreamer? (
		=media-libs/gstreamer-0.10*
		=media-libs/gst-plugins-good-0.10*
		!sh? ( =media-plugins/gst-plugins-ffmpeg-0.10* )
	)
"

RDEPEND="${DEPEND}"


pkg_setup() {
	if ! use xine && ! use gstreamer; then
		edie "You must select xine or gstreamer"
	fi
}

src_compile() {
	export MY_ECONF="
		$(use_enable xine) \
		$(use_enable gstreamer) \
	"

	if use gstreamer ; then
		addpredict "/root/.gconfd"
		addpredict "/root/.gconf"
	fi

	enlightenment_src_compile
}
