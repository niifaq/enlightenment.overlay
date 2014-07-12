# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

E_PYTHON="yes"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"

inherit efl distutils

#E_PKG_IUSE="doc nls"

DESCRIPTION="simple BitTorrent client written in Python using EFL and libtorrent"
HOMEPAGE="https://launchpad.net/epour"

IUSE=""

DEPEND="dev-python/python-distutils-extra
	>=dev-libs/efl-9999
	>=dev-python/python-efl-9999
	dev-python/dbus-python
	"

RDEPEND="${DEPEND}
	>=net-libs/rb_libtorrent-0.16[python]
	dev-python/pyxdg
	"
