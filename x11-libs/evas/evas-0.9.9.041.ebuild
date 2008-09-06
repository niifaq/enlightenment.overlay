# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/evas/evas-9999.ebuild,v 1.17 2006/09/11 03:45:25 vapier Exp $

inherit enlightenment

SRC_URI="http://download.enlightenment.org/snapshots/2007-08-26/${P}.tar.gz"

DESCRIPTION="hardware-accelerated canvas API"

IUSE="altivec cairo directfb edb gif fbcon jpeg mmx opengl png sse svg tiff X
xpm sdl threads"

RDEPEND="X? ( x11-libs/libXrender )
	opengl? ( virtual/opengl )
	>=dev-libs/eet-0.9.10.041
	edb? ( >=dev-db/edb-1.0.5.008 )
	dev-util/pkgconfig
	media-libs/fontconfig
	cairo? ( >=x11-libs/cairo-1.2 )
	directfb? ( >=dev-libs/DirectFB-0.9.16 )
	gif? ( media-libs/giflib )
	jpeg? ( media-libs/jpeg )
	png? ( media-libs/libpng )
	tiff? ( media-libs/tiff )
	xpm? ( x11-libs/libXpm )
	svg? ( >=gnome-base/librsvg-2.14.0 x11-libs/cairo x11-libs/libsvg-cairo )
	sdl? ( media-libs/libsdl )"
DEPEND="${RDEPEND}
	X? (
		x11-proto/xextproto
		x11-proto/xproto
	)"

src_compile() {
	# other *very* fun options:
	#  --enable-cpu-mmx                enable mmx code
	#  --enable-cpu-sse                enable sse code
	#  --enable-scale-sample           enable sampling scaler code
	#  --enable-scale-smooth           enable sampling scaler code
	#  --enable-pthreads               enable threaded renderer
	export MY_ECONF="
		$(use_enable cairo cairo-x11) \
		$(use_enable mmx cpu-mmx) \
		$(use_enable sse cpu-mmx) \
		$(use_enable sse cpu-sse) \
		$(use_enable X software-x11) \
		$(use_enable X software-16-x11) \
		$(use_enable X xrender-x11) \
		$(use_enable sdl sdl) \
		$(use_enable opengl gl-x11) \
		$(use_enable directfb) \
		$(use_enable fbcon fb) \
		--disable-software-xcb \
		--disable-xrender-xcb \
		$(use_enable gif image-loader-gif) \
		$(use_enable png image-loader-png) \
		$(use_enable jpeg image-loader-jpeg) \
		$(use_enable tiff image-loader-tiff) \
		$(use_enable xpm image-loader-xpm) \
		$(use_enable svg image-loader-svg) \
		$(use_enable altivec cpu-altivec) \
		--enable-buffer \
		--enable-image-loader-eet \
		$(use_enable edb image-loader-edb) \
		--enable-font-loader-eet \
		--enable-cpu-c \
		--enable-scale-sample \
		--enable-scale-smooth \
		--enable-convert-8-rgb-332 \
		--enable-convert-8-rgb-666 \
		--enable-convert-8-rgb-232 \
		--enable-convert-8-rgb-222 \
		--enable-convert-8-rgb-221 \
		--enable-convert-8-rgb-121 \
		--enable-convert-8-rgb-111 \
		--enable-convert-16-rgb-565 \
		--enable-convert-16-rgb-555 \
		--enable-convert-16-rgb-444 \
		--enable-convert-16-rgb-rot-0 \
		--enable-convert-16-rgb-rot-270 \
		--enable-convert-16-rgb-rot-90 \
		--enable-convert-24-rgb-888 \
		--enable-convert-24-bgr-888 \
		--enable-convert-32-rgb-8888 \
		--enable-convert-32-rgbx-8888 \
		--enable-convert-32-bgr-8888 \
		--enable-convert-32-bgrx-8888 \
		--enable-convert-32-rgb-rot-0 \
		--enable-convert-32-rgb-rot-270 \
		--enable-convert-32-rgb-rot-90 \
		$(use_enable threads pthreads) \
	"
	enlightenment_src_compile
}
