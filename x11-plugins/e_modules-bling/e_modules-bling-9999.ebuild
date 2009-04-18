# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="EFLized Composite Manager for E17"

IUSE=""

DEPEND=">=x11-wm/enlightenment-0.16.999
	>=media-libs/edje-0.5.0
	x11-libs/ecore
	x11-libs/evas
	x11-libs/esmart
	dev-libs/eet
	x11-libs/libXcomposite"

RDEPEND="${DEPEND}"

