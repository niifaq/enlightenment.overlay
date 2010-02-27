# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
E_NO_NLS="yes"
E_NO_DOC="yes"

inherit efl

DESCRIPTION="EFL photo manager"
HOMEPAGE="http://watchwolf.fr/wiki/doku.php?id=enki"

IUSE=""

DEPEND=">=dev-libs/eina-9999
	>=dev-libs/eet-9999
	>=dev-libs/ecore-9999
	>=media-libs/enlil-9999
	>=media-libs/elementary-9999"

RDEPEND="${DEPEND}"
