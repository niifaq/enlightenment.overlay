# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD/MISC"
inherit enlightenment

DESCRIPTION="EFL powered clock"

IUSE=""

DEPEND="media-libs/edje
	x11-libs/esmart"

RDEPEND="${DEPEND}"

EDOCS="BEER"
