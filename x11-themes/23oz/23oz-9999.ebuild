# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="themes"
inherit efl

DESCRIPTION="E17 theme: 23Oz"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"

src_compile() {
	edje_cc -DVERSION="${ESVN_WC_REVISION}" -id images/ -fd . default.edc -o ${PN}.edj || die edje_cc failed
}

src_install() {
#E17
insinto /usr/share/enlightenment/data/themes
doins "${S}"/${PN}.edj
}
