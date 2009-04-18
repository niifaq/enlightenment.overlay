# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="MISC"
inherit enlightenment

DESCRIPTION="Evas powered image viewer"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/imlib2"

RDEPEND="${DEPEND}"

