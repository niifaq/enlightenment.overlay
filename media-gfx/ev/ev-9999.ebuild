# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/discomfitor"
#E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="xv image viewer replacment using EFL"
HOMEPAGE="http://www.enlightenment.org/"
SRC_URI=""

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""

IUSE=""

RDEPEND="
	 >=dev-libs/efl-1.11.2[X]
	 >=media-libs/elementary-1.11.2
"
DEPEND="${RDEPEND}"
