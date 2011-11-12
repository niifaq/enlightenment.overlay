# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

ESVN_SUB_PROJECT="THEMES"
inherit efl

DESCRIPTION="Detour theme: elementary version"

IUSE=""

DEPEND=">=media-libs/edje-9999"

RDEPEND="${DEPEND}"

src_compile() {
make ${PN}.edj
}

src_install() {
insinto /usr/share/elementary/themes/
doins *.edj
}
