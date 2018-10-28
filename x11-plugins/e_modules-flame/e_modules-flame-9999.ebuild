# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PKG_IUSE="nls"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/ajwillia-ms"
EFL_GIT_REPO_NAME="${PN#e_modules-}"

inherit efl

DESCRIPTION="A module to display flames on the desktop"

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
