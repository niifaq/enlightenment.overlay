# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_NLS="yes"
E_NO_DOC="yes"
E_NO_DISABLE_STATIC="yes"

E_OLD_PROJECT="yes"
ESVN_SUB_PROJECT="MISC"

inherit efl

DESCRIPTION="EFL powered clock"

IUSE=""

DEPEND="media-libs/edje
	x11-libs/esmart"

RDEPEND="${DEPEND}"

EDOCS="BEER"
