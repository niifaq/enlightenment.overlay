# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="5"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="games"
inherit efl

DESCRIPTION="Library for games to manage scores, trohpies and unlockables"
IUSE="static-libs"

RDEPEND=">=dev-libs/efl-9999"
DEPEND="${RDEPEND}"
