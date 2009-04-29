# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="core event abstraction layer and X abstraction layer (nice convenience library)"

IUSE="curl directfb fbcon inotify opengl sdl ssl X"

RDEPEND=">=x11-libs/evas-9999
	X? (
		x11-libs/libXcursor
		x11-libs/libXp
		x11-libs/libXinerama
		x11-libs/libXrandr
		x11-libs/libXScrnSaver
		x11-libs/libXrender
		x11-libs/libXfixes
		x11-libs/libXdamage
	)
	>=dev-libs/eet-9999
	>=dev-libs/eina-9999
	directfb? ( >=dev-libs/DirectFB-0.9.16 )
	sdl? ( media-libs/libsdl )
	ssl? ( dev-libs/openssl )
	curl? ( net-misc/curl )
	gnutls? ( net-libs/gnutls )
	opengl? ( virtual/opengl )"
DEPEND="${RDEPEND}
	X? (
		x11-proto/xproto
		x11-proto/xextproto
		x11-proto/printproto
		x11-proto/xineramaproto
		x11-proto/scrnsaverproto
	)"

src_compile() {
	export MY_ECONF="
		--enable-ecore-txt
		--enable-ecore-job
		--enable-ecore-evas
		--enable-ecore-con
		--enable-ecore-ipc
		--enable-ecore-config
		--enable-ecore-file
		--disable-ecore-x-xcb
		$(use_enable inotify)
		$(use_enable X ecore-x)
		$(use_enable opengl ecore-evas-opengl-x11)
		$(use_enable directfb ecore-directfb)
		$(use_enable directfb ecore-evas-directfb)
		$(use_enable fbcon ecore-fb)
		$(use_enable fbcon ecore-evas-fb)
		$(use_enable sdl ecore-sdl)
		$(use_enable sdl ecore-evas-software-sdl)
		$(use_enable ssl openssl)
		$(use_enable curl)
		$(use_enable gnutls)
	"
	enlightenment_src_compile
}
