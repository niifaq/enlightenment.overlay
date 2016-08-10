# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

#ESVN_SUB_PROJECT="PROTO"
inherit efl

#E_PKG_IUSE="doc nls"

DESCRIPTION="Webcam testing application"

IUSE=""

DEPEND="
	>=dev-libs/efl-1.11.2
"

RDEPEND="${DEPEND}"
