# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#ESVN_SUB_PROJECT="PROTO"
inherit efl

E_PKG_IUSE="nls"

DESCRIPTION="fast and light file browser"

IUSE=""

DEPEND="
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
