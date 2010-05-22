# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
E_NO_NLS="yes"
inherit efl

DESCRIPTION="Enlightenment's integration to various libraries"
HOMEPAGE="http://www.enlightenment.org"

RDEPEND="
	>=dev-libs/ecore-9999
	>=sys-fs/udev-141-r1
"
DEPEND="${RDEPEND}"
