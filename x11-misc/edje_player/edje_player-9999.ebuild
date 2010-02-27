# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_NLS="yes"
E_NO_DOC="yes"
ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="EdjePlayer is a application to play standalone Edje files."

IUSE=""

DEPEND="dev-libs/ecore[evas]
	media-libs/evas
	media-libs/edje"

RDEPEND="${DEPEND}"
