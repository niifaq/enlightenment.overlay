# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"

inherit enlightenment eutils

DESCRIPTION="This module provides a menu-based access to all the windows"

IUSE=""

DEPEND=">=x11-wm/enlightenment-0.16.999
	>=media-libs/edje-0.5.0"

RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/remove_aclocal_amflags.patch

	enlightenment_src_prepare
}
