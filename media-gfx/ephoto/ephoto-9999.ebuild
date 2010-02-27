# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_NLS="yes"
E_NO_DOC="yes"

inherit efl

DESCRIPTION="Ephoto Image Viewer/Editor/Manipulator/Slideshow creator"

IUSE=""

DEPEND="media-libs/evas
	dev-libs/ecore[evas,deprecated]
	dev-libs/efreet
	dev-libs/eina
	media-libs/edje
	media-libs/ethumb"

RDEPEND="${DEPEND}"
