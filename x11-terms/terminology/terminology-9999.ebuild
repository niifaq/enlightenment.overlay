# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
inherit efl meson

DESCRIPTION="EFL based terminal emulator"
HOMEPAGE="https://www.enlightenment.org/p.php?p=about/terminology"

IUSE=""

RDEPEND="
	>=dev-libs/efl-9999"

DEPEND="${RDEPEND}"
