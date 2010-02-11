# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="EWeather gadget for e17"

LICENSE="LGPL-2.1"
IUSE=""

DEPEND=">=x11-wm/enlightenment-0.16.999
		>=net-libs/libeweather-9999
		>=media-libs/edje-0.5.0"

RDEPEND="${DEPEND}"
