# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="An light-weight image viewer based on Elementary"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/edje
	x11-wm/enlightenment
	x11-libs/elementary"