# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_DOC="yes"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="Gadget to control active keyboard, keyboard layout, and layout variant"

IUSE=""

RDEPEND="dev-libs/ecore
	dev-libs/libxml2
	media-libs/edje"

DEPEND="${RDEPEND}
	x11-libs/libX11
	x11-libs/libxkbfile"
