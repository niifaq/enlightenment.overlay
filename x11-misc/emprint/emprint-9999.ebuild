# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="utility for taking screenshots of the entire screen"

RDEPEND="x11-libs/libX11
	>=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=media-libs/edje-9999"
DEPEND="${RDEPEND}
	x11-proto/xproto"
