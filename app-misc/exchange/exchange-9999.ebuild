# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="Enlightenment way to exchange contributed stuff"

IUSE="etk ewl"

DEPEND="
		dev-libs/eina
		x11-libs/ecore
		media-libs/edje
		dev-libs/libxml2

		ewl? ( x11-libs/ewl )
		etk? ( x11-libs/etk )
"

RDEPEND="${DEPEND}"


src_compile() {
	MY_ECONF="
		$(use_enable etk)
		$(use_enable ewl)
	"

	enlightenment_src_compile
}
