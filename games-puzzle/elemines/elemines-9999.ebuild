# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="games"
inherit efl

DESCRIPTION="An EFL minesweeper clone"
HOMEPAGE="http://elemines.sourceforge.net/"

LICENSE="GPL-2 OFL"
SLOT="0"

IUSE=""

RDEPEND=">=dev-libs/efl-9999
	>=media-libs/elementary-9999
"
DEPEND="${DEPEND}"
