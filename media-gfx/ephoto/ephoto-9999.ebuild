# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
E_URI_APPEND="ephoto"
E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="EFL-based photo app"
HOMEPAGE="http://www.enlightenment.org/"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS=""

IUSE=""

RDEPEND="
	 >=dev-libs/efreet-9999
	 >=dev-libs/efl-9999[xim]
	 ||( >=dev-libs/efl-9999[X] >=dev-libs/efl-9999[xcb] )
	 >=media-libs/edje-9999
	 >=media-libs/elementary-9999[thumbnails,xdg]
	 >=media-libs/ethumb-9999
"
DEPEND="${RDEPEND}"
