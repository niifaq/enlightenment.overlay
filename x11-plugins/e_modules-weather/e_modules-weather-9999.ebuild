# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_DOC="yes"
ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="A weather gadget for e17"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999"

RDEPEND="${DEPEND}"

src_prepare() {
	sed -i '/^ACLOCAL_AMFLAGS/ d' Makefile.am

	efl_src_prepare
}
