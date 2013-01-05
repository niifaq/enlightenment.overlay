# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="eenvader.fractal"
inherit efl

DESCRIPTION="An animated wallpaper for E17 wm"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
