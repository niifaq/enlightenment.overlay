# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit efl

DESCRIPTION="utility for taking screenshots of the entire screen"

IUSE=""

RDEPEND="x11-libs/libX11
	media-libs/imlib2
	>=dev-libs/ecore-9999[X,evas]
	>=media-libs/evas-9999
	>=media-libs/edje-9999
	>=media-libs/eina-9999"
DEPEND="${RDEPEND}
	x11-proto/xproto"
