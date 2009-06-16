# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="eyelight - efl powered presentation app"

IUSE=""

DEPEND=">=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=media-libs/edje-9999
	media-libs/libharu"

RDEPEND="${DEPEND}"
