# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"

inherit enlightenment

DESCRIPTION="Adds configuration panel items into the Configuration submenu."

IUSE=""

DEPEND=">=x11-wm/enlightenment-0.16.999
	>=media-libs/edje-0.5.0"

RDEPEND="${DEPEND}"
