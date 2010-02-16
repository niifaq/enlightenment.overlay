# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="an e17 media player"

IUSE=""

DEPEND=">=dev-libs/eet-0.9.9
	>=media-libs/evas-0.9.9
	>=media-libs/edje-0.5.0
	>=dev-libs/ecore-0.9.9
	>=dev-libs/embryo-0.9.0
	>=media-libs/emotion-0.0.1"

RDEPEND="${DEPEND}"
