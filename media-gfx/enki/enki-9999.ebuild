# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"

E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="EFL photo manager"
HOMEPAGE="http://watchwolf.fr/wiki/doku.php?id=enki"

IUSE=""

DEPEND=">=dev-libs/efl-9999
	>=media-libs/enlil-9999"

RDEPEND="${DEPEND}"
