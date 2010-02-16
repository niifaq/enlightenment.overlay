# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="eyelight - efl powered presentation app"

IUSE=""

DEPEND=">=dev-libs/ecore-9999
	>=media-libs/evas-9999
	>=media-libs/edje-9999
	media-libs/libharu"

RDEPEND="${DEPEND}"
