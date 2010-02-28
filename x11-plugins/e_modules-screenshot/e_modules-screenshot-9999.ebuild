# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_DOC="yes"
ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="This module is a port of the e16 epplet E-Screenshot by Tom Gilbert"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999
	x11-misc/emprint
	|| ( media-gfx/imagemagick media-gfx/scrot )"

RDEPEND="${DEPEND}"
