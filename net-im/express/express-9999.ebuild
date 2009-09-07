# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="BROKEN"
inherit enlightenment

DESCRIPTION="EFL based instant messaging program"

IUSE=""

DEPEND=">=x11-libs/esmart-0.9.0
	>=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0"

RDEPEND="${DEPEND}"
