# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="An EFL Based Terminal"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/imlib2
	net-misc/curl"

RDEPEND="${DEPEND}"
