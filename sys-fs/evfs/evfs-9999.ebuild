# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-fs/evfs/evfs-9999.ebuild,v 1.3 2006/08/06 15:50:23 vapier Exp $

EVCS_MODULE="OLD/${PN}"
inherit enlightenment

DESCRIPTION="Enlightenment File Daemon"

IUSE="samba curl bzip2 id3 debug"

DEPEND="x11-libs/ecore
	dev-libs/eet
	x11-libs/evas
	dev-libs/efreet
	x11-libs/ecore
	dev-libs/libxml2
	>=dev-db/sqlite-3
	media-libs/libextractor
	id3? ( media-libs/taglib )
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
