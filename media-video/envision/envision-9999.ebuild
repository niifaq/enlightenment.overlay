# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="an e17 video player"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/edje
	>=media-libs/emotion-0.0.1"

RDEPEND="${DEPEND}"

