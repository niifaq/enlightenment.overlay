# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="EFL image viewer/editor/manipulator/slideshow creator"
HOMEPAGE="http://www.enlightenment.org/"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS=""

IUSE=""

RDEPEND="
	 >=dev-libs/efl-1.11.2[X]
	 >=media-libs/elementary-1.11.2
"
#	 [thumbnails,xdg]
DEPEND="${RDEPEND}"
