# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="EdjePlayer is a application to play standalone Edje files."

IUSE=""

DEPEND="dev-libs/ecore
	media-libs/evas
	media-libs/edje
	x11-libs/etk
	x11-wm/enlightenment"

RDEPEND="${DEPEND}"
