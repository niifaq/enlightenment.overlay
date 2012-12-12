# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

E_PKG_IUSE="nls"

inherit efl

DESCRIPTION="This is intended to be a text editor"

IUSE=""

DEPEND=">=dev-libs/efreet-9999
	|| ( >=dev-libs/efl-9999[X] >=dev-libs/efl-9999[xcb] )
	>=media-libs/edje-9999
	>=media-libs/elementary-9999"

RDEPEND="${DEPEND}"
