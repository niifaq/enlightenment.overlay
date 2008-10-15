# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EVCS_MODULE="OLD/${PN}"
inherit enlightenment

DESCRIPTION="CAD program built on the EFL"

RDEPEND="media-libs/imlib2
	dev-db/edb
	x11-libs/evas
	x11-libs/ecore"
DEPEND="${RDEPEND}"
