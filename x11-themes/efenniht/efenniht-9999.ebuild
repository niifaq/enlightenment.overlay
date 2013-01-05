# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

ESVN_SUB_PROJECT="THEMES"
inherit efl

DESCRIPTION="E17 theme: Efenniht"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"

src_compile() {
make ${PN}.edj
}
src_install() {
insinto /usr/share/enlightenment/data/themes
doins ${PN}.edj
#insinto /usr/share/elementary/themes/
#doins ${PN}-elm.edj
}
