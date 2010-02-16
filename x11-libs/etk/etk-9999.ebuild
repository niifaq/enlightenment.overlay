# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="toolkit based on the EFL"

IUSE="X fbcon"

DEPEND=">=media-libs/evas-9999[png]
	>=media-libs/edje-9999
	>=dev-libs/ecore-9999[fbcon?,X?]"

RDEPEND="${DEPEND}"

src_compile() {
	export MY_ECONF="
		$(use_enable nls)
	"
	enlightenment_src_compile
}
