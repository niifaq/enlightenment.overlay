# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"
ESVN_URI_APPEND="edje_player"
inherit enlightenment

DESCRIPTION="EdjePlayer is a application to play standalone Edje files."

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/edje
	x11-libs/etk
	x11-wm/enlightenment"
