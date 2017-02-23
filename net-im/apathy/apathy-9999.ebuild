# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/kuuko"
E_PKG_IUSE="doc nls"

E_PYTHON="yes"

inherit efl distutils-r1

HOMEPAGE="http://launchpad.net/apathy"
DESCRIPTION="Apathy is a Telepathy based IM client powered by EFL"

IUSE="libnotify"

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	>=dev-libs/efl-9999[glib]
	>=dev-python/python-efl-9999
	>=net-libs/telepathy-glib-0.17.6[introspection]
	net-im/telepathy-mission-control
	net-im/telepathy-connection-managers
	net-voip/telepathy-haze
	dev-python/dbus-python
	libnotify? ( x11-libs/libnotify[introspection] )
"

DEPEND="dev-python/python-distutils-extra"
