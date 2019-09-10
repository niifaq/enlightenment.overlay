# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PKG_IUSE="nls"

inherit efl

DESCRIPTION="Elementary based PolicyKit authentication agent"

IUSE=""

DEPEND="
	|| ( >=dev-libs/efl-9999[X] >=dev-libs/efl-9999[xcb] )
	>=dev-libs/e_dbus-9999"

RDEPEND="${DEPEND}"
