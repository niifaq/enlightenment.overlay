# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="EFL powered media player"

IUSE=""

RDEPEND="media-libs/taglib
	x11-libs/evas
	x11-libs/ecore
	media-libs/edje
	media-libs/emotion
	x11-libs/esmart
	dev-libs/libxml2
	>=dev-db/sqlite-3"
DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.17"
