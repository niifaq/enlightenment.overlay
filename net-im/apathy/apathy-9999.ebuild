# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

E_PKG_IUSE="doc nls"

PYTHON_DEPEND="*:2.4"

inherit python distutils bzr

EBZR_REPO_URI="https://launchpad.net/apathy"
HOMEPAGE="http://www.openapathy.org/"
DESCRIPTION="Apathy is an IM client designed for mobile platform"

IUSE=""

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	>=media-libs/elementary-9999
	>=dev-python/python-e_dbus-9999
	>=dev-python/python-evas-9999
	>=dev-python/python-ecore-9999
	>=dev-python/python-elementary-9999
	dev-python/telepathy-python
	net-libs/telepathy-farsight[python]
	net-im/telepathy-mission-control
	net-im/telepathy-connection-managers
	net-voip/telepathy-haze
	net-libs/farsight2[python]
	dev-python/dbus-python
	dev-python/gst-python
	dev-python/Babel
"

DEPEND=">=dev-python/setuptools-0.6_rc9"

src_prepare() {
	sed  's/update-desktop-database/echo \;\)/g' -i setup.py
}

#src_install() {
#	distutils_src_install

#	domenu "${PN}.desktop"
#	into /usr/share/icons
#	dosym images/*
#}
