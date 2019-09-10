# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"

E_PKG_IUSE="nls"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="wallpaper plugin for everything"

IUSE=""

DEPEND=">=x11-wm/enlightenment-9999[enlightenment_modules_everything]
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
