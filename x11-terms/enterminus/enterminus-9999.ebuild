# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="An EFL Based Terminal"

IUSE=""

DEPEND="dev-libs/ecore
	media-libs/evas
	media-libs/imlib2
	net-misc/curl"

RDEPEND="${DEPEND}"
