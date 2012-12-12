# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

ESVN_SUB_PROJECT="PROTO"
E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="EFL powered file explorer for phones and embedded devices"

IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	>=media-libs/edje-9999
	>=dev-libs/efreet-9999
	>=media-libs/emotion-9999
	>=media-libs/elementary-9999
	"

RDEPEND="${DEPEND}"
