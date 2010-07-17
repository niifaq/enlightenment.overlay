# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="Etch is an abstract time based animation library"

IUSE=""

DEPEND="dev-libs/ecore
	media-libs/evas
	media-libs/edje"

RDEPEND="${DEPEND}"
