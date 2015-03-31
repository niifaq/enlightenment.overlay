# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="themes"
inherit efl

DESCRIPTION="E17 theme: klok"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"

#src_compile() {
#cd "${S}/edje"
#edje_cc -fastcomp -id img/ -sd snd/ -fd fnt/ ${PN}.edc ${PN}.edj || die edje_cc failed
#}

src_install() {
#	emake install-system
	insinto /usr/share/enlightenment/data/backgrounds
	doins "${S}"/${PN}.edj
}
