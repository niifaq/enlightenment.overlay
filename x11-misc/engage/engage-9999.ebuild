# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-misc/engage/engage-9999.ebuild,v 1.5 2005/04/10 21:02:56 vapier Exp $

EVCS_MODULE="MISC/engage"
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

src_compile() {
	export MY_ECONF="$(use_enable xinerama)"
	enlightenment_src_compile
}

src_install() {
	enlightenment_src_install
	exeinto /usr/share/engage
	doexe build_icon.sh
}
