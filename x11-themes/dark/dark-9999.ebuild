# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="themes"
inherit efl

DESCRIPTION="E17 theme: Dark"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"

src_compile() {
cd "${S}/edje"
edje_cc -id img/ ${PN}.edc ${PN}.edj || die edje_cc failed
}

src_install() {
insinto /usr/share/enlightenment/data/themes
doins "${S}"/edje/${PN}.edj
}
