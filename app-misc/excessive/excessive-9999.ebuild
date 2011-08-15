# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

#ESVN_SUB_PROJECT="PROTO"
inherit efl

E_PKG_IUSE="nls"

DESCRIPTION="fast and light file browser"

IUSE=""

DEPEND=">=dev-libs/eina-9999
	>=dev-libs/eet-9999
	>=dev-libs/eio-9999
	>=dev-libs/ecore-9999
	>=media-libs/evas-9999
	>=media-libs/edje-9999
	>=dev-libs/efreet-9999
	>=media-libs/emotion-9999
	>=media-libs/elementary-9999"

RDEPEND="${DEPEND}"
