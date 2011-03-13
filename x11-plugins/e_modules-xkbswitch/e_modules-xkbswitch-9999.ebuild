# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

E_PKG_IUSE="nls"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="X keyboard switcher module for Enlightenment 0.17"
LICENSE="BSD"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999
	dev-libs/libxml2:2"

RDEPEND="${DEPEND}"

src_prepare() {
	ewarn "HACK"
	ewarn "HACK cp missing Makevars file"
	ewarn "HACK"

	eautopoint -f
	cp po/Makevars.template po/Makevars || die "cp Makevars.template failed"

	efl_src_prepare
}
