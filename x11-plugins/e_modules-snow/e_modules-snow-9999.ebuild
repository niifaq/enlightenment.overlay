# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"

E_PKG_IUSE="nls"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="Module to display snow on the desktop"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
