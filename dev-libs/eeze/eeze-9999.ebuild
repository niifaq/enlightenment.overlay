# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc"
inherit efl

DESCRIPTION="Enlightenment's integration to various libraries"
HOMEPAGE="http://www.enlightenment.org"

IUSE=""

RDEPEND="
	!dev-libs/efl
	>=sys-fs/udev-141-r1
"
DEPEND="${RDEPEND}"
