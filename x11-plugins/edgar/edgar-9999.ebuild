# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PHYTON="yes"
PYTHON_COMPAT=( python3_{4,5,6} )
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN}"

inherit efl python-single-r1

DESCRIPTION="E17 Edgar Gadgets Loader"

LICENSE="GPL-2"

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999
	>=dev-python/python-efl-9999"

RDEPEND="${DEPEND}"
