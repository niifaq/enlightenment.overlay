# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit efl

DESCRIPTION="EFL based terminal emulator"
HOMEPAGE="http://www.enlightenment.org/"

IUSE=""

RDEPEND="
	>=dev-libs/eina-9999
	>=dev-libs/eet-9999
	>=media-libs/evas-9999
	>=dev-libs/ecore-9999[xim]
	>=media-libs/edje-9999
	>=media-libs/emotion-9999
	>=media-libs/elementary-9999"

DEPEND="${RDEPEND}"
