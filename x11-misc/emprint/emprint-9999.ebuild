# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
inherit efl

DESCRIPTION="utility for taking screenshots of the entire screen"

IUSE=""

RDEPEND="x11-libs/libX11
	media-libs/imlib2
	|| ( >=dev-libs/efl-9999[X] >=dev-libs/efl-9999[xcb] )
"

DEPEND="${RDEPEND}"
