# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="Enlightenment way to exchange contributed stuff"

IUSE="etk ewl"

DEPEND="
		>=dev-libs/eina-9999
		>=x11-libs/ecore-9999[curl]
		>=media-libs/edje-9999
		dev-libs/libxml2

		ewl? ( >=x11-libs/ewl-9999 )
		etk? ( >=x11-libs/etk-9999 )
"

RDEPEND="${DEPEND}"

src_compile() {
	MY_ECONF="
		$(use_enable etk)
		$(use_enable ewl)
	"

	enlightenment_src_compile
}
