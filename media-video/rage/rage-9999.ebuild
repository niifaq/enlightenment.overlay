# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI="2"

inherit enlightenment

DESCRIPTION="Video frontend using the EFL"

IUSE=""

DEPEND=">=dev-libs/eet-9999
	>=media-libs/evas-9999
	>=media-libs/edje-9999
	>=dev-libs/ecore-9999
	>=media-libs/emotion-9999"

RDEPEND="${DEPEND}"
