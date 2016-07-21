# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="games"
inherit efl

DESCRIPTION="Escape from Booty Bay is a physics game that explore EPhysics amazing features"

IUSE=""

DEPEND="
	>=dev-libs/efl-9999[physics]
	>=dev-games/etrophy-9999
	>=dev-util/geneet-9999
	media-libs/libcanberra
"
RDEPEND="${DEPEND}"
