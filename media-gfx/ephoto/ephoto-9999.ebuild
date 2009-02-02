# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="EFL-based slideshow creator"

IUSE=""

DEPEND="x11-libs/evas
	x11-libs/ecore
	x11-libs/ewl
	media-libs/edje
	media-libs/epsilon
	media-libs/libexif
	>=dev-db/sqlite-3"
