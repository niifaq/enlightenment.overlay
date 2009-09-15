# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="A collection of evas smart objects"

IUSE=""

DEPEND="
	>=x11-libs/evas-9999
	>=x11-libs/ecore-9999
	>=media-libs/edje-9999
	>=media-libs/imlib2-9999
	>=dev-libs/eina-9999
"

RDEPEND="${DEPEND}"
