# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="nls"
ESVN_SUB_PROJECT="PROTO"
E_NO_DISABLE_STATIC="yes"

inherit efl

DESCRIPTION="EFL based login manager"

IUSE=""

RDEPEND=">=media-libs/edje-9999
	>=media-libs/elementary-9999"
DEPEND="${RDEPEND}"
