# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="Thumbnailing Library"

IUSE="pdf emotion"

DEPEND=">=dev-libs/eina-9999
	>=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=media-libs/edje-9999
	emotion? ( >=media-libs/emotion-9999 )
	pdf? ( >=app-text/epdf-9999 )
	"

RDEPEND="${DEPEND}"

src_compile() {

	export MY_ECONF="
                $(use_enable pdf epdf) \
                $(use_enable emotion emotion) \
		"
	enlightenment_src_compile
}
