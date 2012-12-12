# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

ESVN_SUB_PROJECT="GAMES"
inherit efl

DESCRIPTION="Escape From Booty Bay"

KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	>=media-libs/edje-9999
	>=media-libs/elementary-9999
	>=dev-libs/ephysics-9999
	>=dev-games/etrophy-9999
	>=dev-util/geneet-9999
	media-libs/libcanberra
"
RDEPEND="${DEPEND}"

