# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit efl

DESCRIPTION="EFL based terminal emulator"
HOMEPAGE="http://www.enlightenment.org/"

IUSE=""

RDEPEND="
	>=dev-libs/efl-9999[xim]
	>=media-libs/emotion-9999
	>=media-libs/elementary-9999"

DEPEND="${RDEPEND}"
