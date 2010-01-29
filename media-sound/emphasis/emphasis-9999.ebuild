# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="mpd front-end for e17 that uses etk"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/etk
	media-libs/libmpd
	media-sound/mpd
	dev-util/enhance"

RDEPEND="${DEPEND}"
