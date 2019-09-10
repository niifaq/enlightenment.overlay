# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="5"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN#e_modules-}"
inherit efl eutils

DESCRIPTION="Simple MPD module for e17"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999
	media-libs/libmpd"

RDEPEND="${DEPEND}"
