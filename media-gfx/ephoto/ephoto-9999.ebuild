# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit enlightenment

DESCRIPTION="Ephoto Image Viewer/Editor/Manipulator/Slideshow creator"

IUSE=""

DEPEND="media-libs/evas
	dev-libs/ecore
	x11-libs/ewl
	media-libs/edje
	media-libs/epsilon
	media-libs/libexif
	>=dev-db/sqlite-3"

RDEPEND="${DEPEND}"
