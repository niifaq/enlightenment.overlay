# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="edje viewer based on elementary"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/edje
	x11-libs/elementary
	x11-wm/enlightenment"

RDEPEND="${DEPEND}"

