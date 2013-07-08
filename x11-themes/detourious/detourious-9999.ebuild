# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="themes"
inherit efl

DESCRIPTION="E17 theme: Detourious"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"

src_install() {
insinto /usr/share/enlightenment/data/themes
doins ${PN}.edj
doins ${PN}-dark.edj
insinto /usr/share/elementary/themes/
doins ${PN}-elm.edj
}
