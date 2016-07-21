# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="games"
inherit efl

DESCRIPTION="Library for games to manage scores, trohpies and unlockables"
IUSE="static-libs"

RDEPEND=">=dev-libs/efl-9999"
DEPEND="${RDEPEND}"
