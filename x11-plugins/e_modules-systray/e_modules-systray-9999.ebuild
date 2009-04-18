# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"

inherit enlightenment

DESCRIPTION="System Tray"

IUSE=""

DEPEND="x11-libs/ecore
		x11-libs/evas
		x11-wm/enlightenment
		media-libs/edje"

RDEPEND="${DEPEND}"

