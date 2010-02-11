# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="Moon Clock module for e17"

IUSE=""

DEPEND=">=dev-libs/eet-0.9.10
	>=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=dev-libs/embryo-0.5.0
	>=media-libs/edje-0.5.0
	>=x11-wm/enlightenment-0.16.999"

RDEPEND="${DEPEND}"
