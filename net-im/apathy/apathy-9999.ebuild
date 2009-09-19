# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

NEED_PYTHON="2.4"

inherit python distutils bzr

EBZR_REPO_URI="https://launchpad.net/apathy"

DESCRIPTION="Apathy is an IM client designed for mobile platform"

IUSE=""

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	>=x11-libs/elementary-9999
	>=dev-python/python-e_dbus-9999
	>=dev-python/python-evas-9999
	>=dev-python/python-ecore-9999
	dev-python/telepathy-python
	net-libs/telepathy-farsight
	net-libs/farsight2
	dev-python/dbus-python
	dev-python/gconf-python
	dev-python/gst-python
"

DEPEND=">=dev-python/setuptools-0.6_rc9"

src_prepare() {
	sed  's/update-desktop-database/echo \\;\\)/g' -i setup.py
}

src_install() {
	distutils_src_install

	domenu "${PN}.desktop"
}
