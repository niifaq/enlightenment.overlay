# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="nls"
ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="Gadget to control active keyboard, keyboard layout, and layout variant"

IUSE=""

RDEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/ecore-9999
	>=media-libs/edje-9999
	dev-libs/libxml2"

DEPEND="${RDEPEND}
	x11-libs/libX11
	x11-libs/libxkbfile"
