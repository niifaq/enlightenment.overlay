# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

E_PKG_IUSE="doc nls"

PYTHON_DEPEND="*:2.7"

inherit python distutils bzr

EBZR_REPO_URI="https://launchpad.net/apathy"
HOMEPAGE="http://launchpad.net/apathy"
DESCRIPTION="Apathy is a Telepathy based IM client powered by EFL"

IUSE="libnotify"

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	>=media-libs/elementary-9999
	>=dev-python/python-e_dbus-9999
	>=dev-python/python-evas-9999
	>=dev-python/python-ecore-9999
	>=dev-python/python-elementary-9999
	>=net-libs/telepathy-glib-0.17.6[introspection]
	net-im/telepathy-mission-control
	net-im/telepathy-connection-managers
	net-voip/telepathy-haze
	dev-python/dbus-python
	libnotify? ( x11-libs/libnotify[introspection] )
"

DEPEND="dev-python/python-distutils-extra"