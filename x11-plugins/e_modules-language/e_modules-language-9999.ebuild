# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="Gadget to control active keyboard, keyboard layout, and layout variant"

IUSE=""

RDEPEND=">=x11-wm/enlightenment-0.16.999
	>=media-libs/edje-0.5.0
	dev-libs/exml"
DEPEND="${RDEPEND}
	x11-libs/libX11
	x11-libs/libxkbfile"
