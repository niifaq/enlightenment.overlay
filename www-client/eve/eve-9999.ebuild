# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
inherit efl

DESCRIPTION="Web browser using EFL Webkit"

IUSE="nls"

DEPEND="net-libs/webkit-efl
	dev-libs/efl[X]
	dev-libs/e_dbus"
