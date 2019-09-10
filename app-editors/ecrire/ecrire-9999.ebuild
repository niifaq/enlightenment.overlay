# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

E_PKG_IUSE="nls"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
inherit efl cmake-utils

DESCRIPTION="This is intended to be a text editor"

IUSE=""

DEPEND="
	|| ( >=dev-libs/efl-1.11.2[X] >=dev-libs/efl-1.11.2[xcb] )
"

RDEPEND="${DEPEND}"
