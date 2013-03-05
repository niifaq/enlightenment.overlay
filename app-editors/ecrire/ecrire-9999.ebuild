# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

E_PKG_IUSE="nls"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
inherit cmake-utils efl

DESCRIPTION="This is intended to be a text editor"

IUSE=""

DEPEND="
	|| ( >=dev-libs/efl-9999[X] >=dev-libs/efl-9999[xcb] )
	>=media-libs/elementary-9999"

RDEPEND="${DEPEND}"

src_configure()
{
	cmake-utils_src_configure
}
