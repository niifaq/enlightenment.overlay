# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

#ESVN_SUB_PROJECT="PROTO"
inherit efl

E_PKG_IUSE="nls"

DESCRIPTION="fast and light file browser"

IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	>=media-libs/emotion-9999
	>=media-libs/elementary-9999"

RDEPEND="${DEPEND}"
