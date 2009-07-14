# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="an image viewer that uses Etk as its toolkit"

IUSE=""

DEPEND=">=x11-libs/evas-9999
	>=x11-libs/ecore-9999
	>=media-libs/edje-9999
	>=x11-libs/etk-9999
	>=dev-libs/eet-9999
	>=media-libs/epsilon-9999
	>=x11-wm/enlightenment-9999
	>=dev-libs/engrave-9999
	>=dev-libs/efreet-9999"

RDEPEND="${DEPEND}"

