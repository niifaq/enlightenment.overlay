# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI=5
E_PYTHON="yes"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
inherit efl distutils-r1

DESCRIPTION="A complete D-Bus inspector written in python that use the EFL"

IUSE=""

DEPEND=">=dev-python/python-efl-9999
	dev-python/dbus-python"
# xml.etree: dev-python/elementtree ?
# json?

RDEPEND="
	>=dev-libs/efl-9999
	${DEPEND}"
