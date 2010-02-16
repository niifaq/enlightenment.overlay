# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="Simple text editor using EFL and Esmart_Textarea"

IUSE=""

DEPEND="media-libs/evas
	dev-libs/ecore
	media-libs/edje
	x11-libs/esmart"

RDEPEND="${DEPEND}"
