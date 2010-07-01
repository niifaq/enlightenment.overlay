# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_NLS="yes"
E_NO_DOC="yes"

ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="EFL Physics Engine"

IUSE=""

DEPEND=">=dev-libs/ecore-9999
	>=media-libs/evas-9999"

RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/add-explicit-visibility-for-api.patch

	efl_src_prepare
}
