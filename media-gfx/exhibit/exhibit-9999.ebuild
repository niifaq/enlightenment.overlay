# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="an image viewer that uses Etk as its toolkit"

IUSE=""

DEPEND=">=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0
	x11-libs/etk
	dev-libs/eet
	media-libs/epsilon
	x11-wm/enlightenment
	dev-libs/engrave
	dev-libs/efreet"
