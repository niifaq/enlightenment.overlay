# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

ESVN_SUB_PROJECT="PROTO"
inherit efl

#E_PKG_IUSE="doc nls"

DESCRIPTION="small library that allows application to get some basic location awareness"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
