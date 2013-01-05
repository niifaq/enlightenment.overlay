# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

ESVN_SUB_PROJECT="GAMES"
inherit efl

DESCRIPTION="Echo is a game based on the classic game Simon Says, written using EFL"

LICENSE="LGPL-3"
IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	>=dev-games/etrophy-9999
	>=media-libs/elementary-9999
	media-libs/libcanberra
"

RDEPEND="${DEPEND}"
