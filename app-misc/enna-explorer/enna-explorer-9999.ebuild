# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

ESVN_SUB_PROJECT="PROTO"
E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="EFL powered file explorer for phones and embedded devices"

IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	"

RDEPEND="${DEPEND}"
