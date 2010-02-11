# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="EFM path module"

IUSE=""

DEPEND=">=media-libs/edje-0.5.0
	>=x11-wm/enlightenment-0.16.999"

RDEPEND="${DEPEND}"
