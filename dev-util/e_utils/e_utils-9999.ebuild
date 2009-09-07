# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="collection of utils for e17"

IUSE=""

DEPEND=">=dev-libs/eet-0.9.10
	x11-wm/enlightenment
	>=x11-libs/esmart-0.9.0.002
	>=x11-libs/ewl-0.0.4
	>=dev-libs/engrave-0.1.0
	>=x11-libs/ecore-0.9.9
	>=x11-libs/evas-0.9.9"

RDEPEND="${DEPEND}"
