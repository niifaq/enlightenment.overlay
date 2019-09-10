# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="themes"
inherit efl

DESCRIPTION="E17 theme: Darkness"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"

src_compile() {
#E17
#edje_cc -DVERSION="${ESVN_WC_REVISION}" -id images/ -fd . ${PN}.edc -o ${PN}.edj || die edje_cc failed
edje_cc -DVERSION="99999" -id images/ -fd . ${PN}.edc -o ${PN}.edj || die edje_cc failed
#Elm
cd "${S}/elm"
#edje_cc -id . -fd ../fonts  ${PN}-desktop.edc ${PN}-elm-desktop.edj || die edje_cc failed
#edje_cc -id . -fd ../fonts  ${PN}.edc ${PN}-elm.edj || die edje_cc failed
#GTK

#cursors

}

src_install() {
#E17
insinto /usr/share/enlightenment/data/themes
doins "${S}"/${PN}.edj
#Elm
#insinto /usr/share/elementary/themes/
#doins "${S}"/elm/*.edj
}
