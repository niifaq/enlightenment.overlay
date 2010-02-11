# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD/PROTO"
inherit enlightenment

DESCRIPTION="an audio CD ripper and encoder"

IUSE=""

DEPEND="dev-libs/eet
	x11-libs/ecore
	x11-libs/evas
	x11-libs/etk
	dev-util/enhance"

RDEPEND="${DEPEND}"
