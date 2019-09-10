# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"

E_PKG_IUSE="nls"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN#e_modules-}"
inherit efl

DESCRIPTION="EWeather gadget for e17"

LICENSE="LGPL-2.1"
IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=net-libs/libeweather-9999
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
