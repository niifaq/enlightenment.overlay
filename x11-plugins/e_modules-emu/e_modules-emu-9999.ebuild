# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="Emu is an exercise in Zen programming"

IUSE=""

DEPEND=">=x11-wm/enlightenment-0.16.999
	media-libs/edje
	x11-libs/ecore
	x11-libs/evas
	x11-libs/esmart
	dev-libs/eet"

RDEPEND="${DEPEND}"
