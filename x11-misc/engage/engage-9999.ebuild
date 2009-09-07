# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD/MISC"
inherit enlightenment

DESCRIPTION="nice bar thingy"

IUSE="xinerama"

DEPEND=">=media-libs/imlib2-1.2.0
	>=media-libs/edje-0.5.0
	>=x11-libs/ecore-0.9.9
	>=x11-libs/evas-0.9.9
	>=x11-libs/etk-0.0.4
	dev-libs/embryo
	x11-libs/esmart"

RDEPEND="${DEPEND}"

src_compile() {
	export MY_ECONF="$(use_enable xinerama)"
	enlightenment_src_compile
}

src_install() {
	enlightenment_src_install
	exeinto /usr/share/engage
	doexe build_icon.sh
}
