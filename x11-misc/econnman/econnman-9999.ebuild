# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit efl

DESCRIPTION="EFL powered ConnMan GUI"

IUSE=""

DEPEND=">=dev-python/python-elementary-9999
	>=dev-python/python-e_dbus-9999"

RDEPEND="
	>=media-libs/elementary-9999
	${DEPEND}"
