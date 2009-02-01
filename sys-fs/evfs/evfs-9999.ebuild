# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
ESVN_URI_APPEND="${PN}"
inherit enlightenment

DESCRIPTION="Enlightenment File Daemon"

IUSE="samba curl bzip2 taglib debug"

DEPEND="x11-libs/ecore
	dev-libs/eet
	x11-libs/evas
	dev-libs/efreet
	x11-libs/ecore
	dev-libs/libxml2
	>=dev-db/sqlite-3
	media-libs/libextractor
	taglib? ( media-libs/taglib )
	bzip2? ( app-arch/bzip2 )
	curl? ( net-misc/curl )
	samba? ( net-fs/samba )"

src_compile() {
	export MY_ECONF="
		$(use_enable samba)
		--enable-plugin-extractor
	"
	enlightenment_src_compile
}
