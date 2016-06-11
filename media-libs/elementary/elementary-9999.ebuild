# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PKG_IUSE="doc nls"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="core"

inherit efl

DESCRIPTION="Basic widget set, based on EFL with focus mobile touch-screen devices."
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Elementary"

LICENSE="LGPL-2.1"

IUSE="debug emap examples fbcon javascript location opengl quicklaunch sdl static-libs wayland weather X"

RDEPEND="
	>=dev-libs/efl-9999[fbcon?,opengl?,sdl?,wayland?,X?]
	location? ( >=dev-libs/efl-9999 )
	emap? ( >=sci-geosciences/emap-9999 )
	weather? ( >=net-libs/libeweather-9999 )
	javascript? ( net-libs/nodejs )
"
DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
		${MY_ECONF}
		$(use_enable debug)
		$(use_enable doc)
		$(use_enable emap)
		--disable-ecore-cocoa
		--disable-ecore-psl1ght
		--disable-ecore-win32
		$(use_enable location elocation)
		$(use_enable weather eweather)
		$(use_enable examples install-examples)
		$(use_enable fbcon ecore-fb)
		$(use_enable sdl ecore-sdl)
		$(use_enable wayland ecore-wl2)
		$(use_enable X ecore-x)
		$(use_enable quicklaunch quick-launch)
		$(use_enable javascript js-bindings)
	
		--with-elementary-web-backend=none
		--disable-build-examples
	"
	efl_src_configure
}
