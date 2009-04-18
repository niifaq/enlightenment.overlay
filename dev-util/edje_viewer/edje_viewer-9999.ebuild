# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="edje viewer based on etk"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/edje
	x11-libs/etk
	x11-wm/enlightenment"

RDEPEND="${DEPEND}"

