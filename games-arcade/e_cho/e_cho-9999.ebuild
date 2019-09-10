# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="games"
inherit efl

DESCRIPTION="Game based on Simon Says, written using EFL"

LICENSE="LGPL-3"
IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	>=dev-games/etrophy-9999
	media-libs/libcanberra
"

RDEPEND="${DEPEND}"
