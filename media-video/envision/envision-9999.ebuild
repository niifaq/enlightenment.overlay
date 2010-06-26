# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_OLD_PROJECT="yes"
ESVN_SUB_PROJECT="MISC"

inherit efl

DESCRIPTION="an e17 video player"

IUSE=""

DEPEND="dev-libs/ecore
	media-libs/evas
	media-libs/edje
	>=media-libs/emotion-0.0.1"

RDEPEND="${DEPEND}"
