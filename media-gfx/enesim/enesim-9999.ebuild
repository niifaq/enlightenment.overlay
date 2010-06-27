# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_NLS="yes"
E_NO_DOC="yes"
ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="Enesim is a direct rendering graphics library"

IUSE=""

DEPEND=">=dev-libs/eina-9999"

RDEPEND="${DEPEND}"
