# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="CAD program built on the EFL"

IUSE=""

RDEPEND="media-libs/imlib2
	dev-db/edb
	media-libs/evas
	dev-libs/ecore"
DEPEND="${RDEPEND}"
