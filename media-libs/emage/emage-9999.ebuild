# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"

inherit enlightenment

DESCRIPTION="Emage is a library for loading and saving image files in a sync and async way."

IUSE=""

DEPEND="dev-libs/eina
	media-gfx/enesim
	media-libs/jpeg
	media-libs/libpng
	"

RDEPEND="${DEPEND}"
