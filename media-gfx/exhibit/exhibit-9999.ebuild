# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/exhibit/exhibit-9999.ebuild,v 1.1 2005/12/31 08:52:10 vapier Exp $

inherit enlightenment

DESCRIPTION="an image viewer that uses Etk as its toolkit"

DEPEND=">=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0
	x11-libs/etk
	dev-libs/eet
	media-libs/epsilon
	x11-wm/e
	dev-libs/engrave
	dev-libs/efreet"
