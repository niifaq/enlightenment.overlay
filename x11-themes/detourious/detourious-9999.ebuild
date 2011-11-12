# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

ESVN_SUB_PROJECT="THEMES"
inherit efl

DESCRIPTION="E17 theme: Detourious"

IUSE=""

DEPEND=">=media-libs/edje-9999"

RDEPEND="${DEPEND}"

src_install() {
insinto /usr/share/enlightenment/data/themes
doins ${PN}.edj
doins ${PN}-dark.edj
insinto /usr/share/elementary/themes/
doins ${PN}-elm.edj
}
