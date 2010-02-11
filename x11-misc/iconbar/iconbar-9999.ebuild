# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="e17 iconbar as a standalone package"
HOMEPAGE="http://www.rephorm.com/rephorm/code/iconbar/"

IUSE=""

DEPEND=">=dev-libs/eet-0.9.9
	>=x11-libs/evas-0.9.9
	>=media-libs/imlib2-1.2.0
	>=x11-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0
	>=x11-libs/esmart-0.9.0
	>=x11-libs/ewl-0.0.4"

RDEPEND="${DEPEND}"
