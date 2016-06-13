# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PKG_IUSE="doc nls"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="core"

inherit efl pax-utils

DESCRIPTION="Enlightenment Foundation Libraries all-in-one package"

LICENSE="BSD-2 GPL-2 LGPL-2.1 ZLIB"
IUSE="apulse +bmp debug drm +eet egl fbcon +fontconfig fribidi gesture gif gles glib gnutls gstreamer gstreamer010 harfbuzz +ico ibus jpeg2k libressl +multisense neon oldlua opengl ssl physics pixman +png postscript +ppm +psd pulseaudio raw scim sdl sound systemd tga tiff tslib v4l valgrind wayland webp X xim xine xpm"

REQUIRED_USE="
	multisense? ( pulseaudio )
	pulseaudio?	( sound )
	opengl?		( || ( X sdl wayland ) )
	gles?		( || ( X sdl wayland ) )
	gles?		( egl )
	sdl?		( || ( opengl gles ) )
	wayland?	( egl || ( opengl gles ) )
	xim?		( X )
"

RDEPEND="
	apulse? (
		media-sound/apulse
	)
	drm? (
		>=dev-libs/libinput-0.8
		media-libs/mesa[gbm]
		>=x11-libs/libdrm-2.4
		>=x11-libs/libxkbcommon-0.3.0
	)
	fontconfig? ( media-libs/fontconfig )
	fribidi? ( dev-libs/fribidi )
	gif? ( media-libs/giflib )
	glib? ( dev-libs/glib:2 )
	gnutls? ( net-libs/gnutls )
	!gnutls? (
		ssl? (
			!libressl? ( dev-libs/openssl:0= )
			libressl? ( dev-libs/libressl )
		)
	)
	gstreamer010? (
		media-libs/gstreamer:0.10
		media-libs/gst-plugins-base:0.10
	)
	gstreamer? (
		media-libs/gstreamer:1.0
		media-libs/gst-plugins-base:1.0
	)
	harfbuzz? ( media-libs/harfbuzz )
	ibus? ( app-i18n/ibus )
	jpeg2k? ( media-libs/openjpeg:0 )
	!oldlua? ( >=dev-lang/luajit-2.0.0 )
	oldlua? ( dev-lang/lua:* )
	physics? ( >=sci-physics/bullet-2.80 )
	pixman? ( x11-libs/pixman )
	png? ( media-libs/libpng:0= )
	pulseaudio? ( media-sound/pulseaudio )
	postscript? ( app-text/libspectre )
	raw? ( media-libs/libraw )
	scim? ( app-i18n/scim )
	sdl? (
		media-libs/libsdl2
		virtual/opengl
	)
	sound? ( media-libs/libsndfile )
	systemd? ( sys-apps/systemd )
	tiff? ( media-libs/tiff:0= )
	tslib? ( x11-libs/tslib )
	valgrind? ( dev-util/valgrind )
	wayland? (
		>=dev-libs/wayland-1.11.0
		>=x11-libs/libxkbcommon-0.6.0
		media-libs/mesa[wayland]
	)
	webp? ( media-libs/libwebp )
	X? (
		x11-libs/libXcursor
		x11-libs/libX11
		x11-libs/libXcomposite
		x11-libs/libXdamage
		x11-libs/libXext
		x11-libs/libXfixes
		x11-libs/libXinerama
		x11-libs/libXp
		x11-libs/libXrandr
		x11-libs/libXrender
		x11-libs/libXtst
		x11-libs/libXScrnSaver

		opengl? (
			x11-libs/libX11
			x11-libs/libXrender
			virtual/opengl
		)

		gles? (
			x11-libs/libX11
			x11-libs/libXrender
			virtual/opengl
		)
	)
	xine? ( >=media-libs/xine-lib-1.1.1 )
	xpm? ( x11-libs/libXpm )

	sys-apps/dbus
	>=sys-apps/util-linux-2.20.0
	sys-libs/zlib
	virtual/jpeg:0=

	!dev-libs/ecore
	!dev-libs/edbus
	!dev-libs/eet
	!dev-libs/eeze
	!dev-libs/efreet
	!dev-libs/eina
	!dev-libs/eio
	!dev-libs/embryo
	!dev-libs/eobj
	!dev-libs/ephysics
	!media-libs/edje
	!media-libs/emotion
	!media-libs/ethumb
	!media-libs/evas
"
#external lz4 support currently broken because of unstable ABI/API
#	app-arch/lz4

#soft blockers added above for binpkg users
#hard blocks are needed for building
CORE_EFL_CONFLICTS="
	!!dev-libs/ecore
	!!dev-libs/edbus
	!!dev-libs/eet
	!!dev-libs/eeze
	!!dev-libs/efreet
	!!dev-libs/eina
	!!dev-libs/eio
	!!dev-libs/embryo
	!!dev-libs/eobj
	!!dev-libs/ephysics
	!!media-libs/edje
	!!media-libs/emotion
	!!media-libs/ethumb
	!!media-libs/evas
"

DEPEND="
	${CORE_EFL_CONFLICTS}

	${RDEPEND}
	doc? ( app-doc/doxygen )
"

src_prepare() {
	efl_src_prepare

	# Remove stupid sleep command.
	# Also back out gnu make hack that causes regen of Makefiles.
	# Delete var setting that causes the build to abort.
	sed -i \
		-e '/sleep 10/d' \
		-e '/^#### Work around bug in automake check macro$/,/^#### Info$/d' \
		-e '/BARF_OK=/s:=.*:=:' \
		configure || die
}

src_configure() {
	if use ssl && use gnutls ; then
		einfo "You enabled both USE=ssl and USE=gnutls, but only one can be used;"
		einfo "gnutls has been selected for you."
	fi
	if use opengl && use gles ; then
		einfo "You enabled both USE=opengl and USE=gles, but only one can be used;"
		einfo "opengl has been selected for you."
	fi

	export MY_ECONF="
		${MY_ECONF}
		--with-profile=$(usex debug debug release)
		--with-crypto=$(usex gnutls gnutls $(usex ssl openssl none))
		--with-x11=$(usex X xlib none)
		$(use_with X x)
		--with-opengl=$(usex opengl full $(usex gles es none))
		--with-glib=$(usex glib)
		--enable-i-really-know-what-i-am-doing-and-that-this-will-probably-break-things-and-i-will-fix-them-myself-and-send-patches-abb

		$(use_enable bmp image-loader-bmp)
		$(use_enable bmp image-loader-wbmp)
		$(use_enable drm)
		$(use_enable drm elput)
		$(use_enable doc)
		$(use_enable eet image-loader-eet)
		$(use_enable egl)
		$(use_enable fbcon fb)
		$(use_enable fontconfig)
		$(use_enable fribidi)
		$(use_enable gif image-loader-gif)
		$(use_enable gesture)
		$(use_enable gstreamer gstreamer1)
		$(use_enable gstreamer010 gstreamer)
		$(use_enable harfbuzz)
		$(use_enable ico image-loader-ico)
		$(use_enable ibus)
		$(use_enable jpeg2k image-loader-jp2k)
		$(use_enable multisense)
		$(use_enable neon)
		$(use_enable nls)
		$(use_enable oldlua lua-old)
		$(use_enable physics)
		$(use_enable pixman)
		$(use_enable pixman pixman-font)
		$(use_enable pixman pixman-rect)
		$(use_enable pixman pixman-line)
		$(use_enable pixman pixman-poly)
		$(use_enable pixman pixman-image)
		$(use_enable pixman pixman-image-scale-sample)
		$(use_enable png image-loader-png)
		$(use_enable ppm image-loader-pmaps)
		$(use_enable psd image-loader-psd)
		$(use_enable pulseaudio)
		$(use_enable postscript spectre)
		$(use_enable raw libraw)
		$(use_enable apulse pulseaudio)
		$(use_enable scim)
		$(use_enable sdl)
		$(use_enable sound audio)
		$(use_enable systemd)
		$(use_enable tga image-loader-tga)
		$(use_enable tiff image-loader-tiff)
		$(use_enable tslib)
		$(use_enable v4l v4l2)
		$(use_enable valgrind)
		$(use_enable wayland wayland)
		$(use_enable wayland wayland-ivi-shell)
		$(use_enable webp image-loader-webp)
		$(use_enable xim)
		$(use_enable xine)
		$(use_enable xpm image-loader-xpm)
		--enable-cserve
		--enable-image-loader-generic
		--enable-image-loader-jpeg

		--disable-tizen
		--enable-xinput2
		--disable-xinput22
		--enable-libmount
	"
		# external lz4 support currently broken because of unstable ABI/API
		#--enable-liblz4

	efl_src_configure
}

src_compile() {
	if host-is-pax && ! use oldlua ; then
		# We need to build the lua code first so we can pax-mark it. #547076
		local target='_e_built_sources_target_gogogo_'
		printf '%s: $(BUILT_SOURCES)\n' "${target}" >> src/Makefile || die
		emake -C src "${target}"
		emake -C src bin/elua/elua
		pax-mark m src/bin/elua/.libs/elua
	fi
	efl_src_compile
}

src_install() {
	MAKEOPTS+=" -j1"

	efl_src_install
}
