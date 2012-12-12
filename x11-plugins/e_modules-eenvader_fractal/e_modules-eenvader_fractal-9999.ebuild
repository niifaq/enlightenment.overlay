# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="eenvader.fractal"
inherit efl

DESCRIPTION="An animated wallpaper for E17 wm"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
