# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EVCS_MODULE="E-MODULES-EXTRA/${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="modules visualizes disk activity, green = read, red = write"

IUSE=""

DEPEND=">=x11-wm/e-0.16.999
	>=media-libs/edje-0.5.0"
