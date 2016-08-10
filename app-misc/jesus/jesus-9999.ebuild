# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

E_PKG_IUSE="nls"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/bu5hm4n"
EGIT_SUBMODULES=()
inherit efl cmake-utils

DESCRIPTION="A filemanager build with elementary"

IUSE=""

DEPEND="
	|| ( >=dev-libs/efl-1.11.2[X] >=dev-libs/efl-1.11.2[xcb] )
"

RDEPEND="${DEPEND}"

