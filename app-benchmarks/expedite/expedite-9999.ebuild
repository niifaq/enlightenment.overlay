# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

E_PKG_IUSE="static-libs"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="tools"
inherit efl

DESCRIPTION="Comprehensive test and benchmark suite for Evas"

IUSE="directfb fbcon opengl sdl X"

RDEPEND="
	>=dev-libs/efl-9999[fbcon?,opengl?,sdl?,X?]
	opengl? ( virtual/opengl )
	directfb? ( >=dev-libs/DirectFB-0.9.16 )
	sdl? ( media-libs/libsdl )
	X? (
		x11-libs/libX11
		x11-libs/libXext
		x11-libs/libXrender
	)"
DEPEND="${RDEPEND}"
REQUIRED_USE="opengl? ( X )"

pkg_pretend() {
#	local x_or_xcb=""

	if ! use directfb && ! use fbcon && ! use sdl && ! use X; then
		die "Expedite needs at least one output system to be useful!"
		die "Compile app-benchmarks/expedite with USE=directfb, fbcon, sdl or X"
	fi

#	if use X; then
#		x_or_xcb="X"
#	elif use xcb; then
#		x_or_xcb="xcb"
#	fi

#	if use opengl && [[ -z "$x_or_xcb" ]]; then
#		die "Expedite usage of OpenGL requires X11."
#		die "Compile app-benchmarks/expedite with USE=X or xcb."
#	fi
}

#TODO:
#  --enable-opengl-sdl     enable OpenGL SDL engine
#  --enable-wayland-egl    enable Wayland EGL engine
#  --enable-wayland-shm    enable Wayland SHM engine

src_configure() {
	export MY_ECONF="
	  ${MY_ECONF}
	  --disable-software-gdi
	  --disable-software-ddraw
	  --disable-psl1ght
	  --disable-directfb
	  --disable-direct3d
	  --disable-opengl-cocoa
	  --disable-software-16-wince
	  $(use_enable directfb)
	  $(use_enable fbcon fb)
	  $(use_enable opengl opengl-x11)
	  $(use_enable sdl software-sdl)
	  $(use_enable X software-x11)
	  $(use_enable X xrender-x11)
	"
	efl_src_configure
}