# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN}"

inherit efl

DESCRIPTION="E17 module to add extra menus to the main menu"

LICENSE="GPL-2"
IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
