# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc"

inherit efl

DESCRIPTION="Enki photo manager library"
HOMEPAGE="http://watchwolf.fr/wiki/doku.php?id=enki"

IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	>=net-libs/azy-9999
	>=media-libs/libexif-0.6.16
	>=media-libs/libiptcdata-1.0.2
"

RDEPEND="${DEPEND}"
