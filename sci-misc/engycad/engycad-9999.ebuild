# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="CAD program built on the EFL"

IUSE=""

RDEPEND="media-libs/imlib2
	dev-db/edb
	x11-libs/evas
	x11-libs/ecore"
DEPEND="${RDEPEND}"
