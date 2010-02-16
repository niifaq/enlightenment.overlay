# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="an e17 video player"

IUSE=""

DEPEND="dev-libs/ecore
	media-libs/evas
	media-libs/edje
	>=media-libs/emotion-0.0.1"

RDEPEND="${DEPEND}"
