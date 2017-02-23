# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

E_PHYTON="yes"
PYTHON_COMPAT=( python3_4 )
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN}"

inherit efl python-single-r1

DESCRIPTION="E17 Edgar Gadgets Loader"

LICENSE="GPL-2"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
