# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit enlightenment

SRC_URI="http://download.enlightenment.org/snapshots/2007-08-26/${P}.tar.gz"

DESCRIPTION="Video frontend using the EFL"

DEPEND=">=dev-libs/eet-0.9.10.041
	>=x11-libs/evas-0.9.9.041
	>=media-libs/edje-0.5.0.041
	>=x11-libs/ecore-0.9.9.041
	>=media-libs/emotion-0.0.1.008"
