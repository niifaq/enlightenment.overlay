# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="Simple text editor using EFL and Esmart_Textarea"

IUSE=""

DEPEND="x11-libs/evas
	x11-libs/ecore
	media-libs/edje
	x11-libs/esmart"

RDEPEND="${DEPEND}"
