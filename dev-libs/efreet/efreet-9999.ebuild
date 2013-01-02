# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

E_PKG_IUSE="doc"
ESVN_SUB_PROJECT="IN-EFL"
inherit efl

DESCRIPTION="library for handling of freedesktop.org specs (desktop/icon/theme/etc...)"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Efreet"
IUSE=""

RDEPEND="
	!dev-libs/efreet
	x11-misc/xdg-utils"
DEPEND="${RDEPEND}"
