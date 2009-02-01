# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/eet/eet-9999.ebuild,v 1.4 2005/03/25 17:51:29 vapier Exp $

EAPI=1

inherit enlightenment

DESCRIPTION="E file chunk reading/writing library"
HOMEPAGE="http://www.enlightenment.org/pages/eet.html"

IUSE="+signature +cipher"

DEPEND="
		media-libs/jpeg
		sys-libs/zlib
		dev-libs/eina
		signature? ( || ( dev-libs/openssl ) )
		cipher? ( || ( dev-libs/openssl net-libs/gnutls ) )
	"

src_compile() {
	MY_ECONF=""

	if use signature || use cipher; then
		has_version dev-libs/openssl && MY_ECONF="${MY_ECONF} --enable-openssl"
		has_version net-libs/gnutls && MY_ECONF="${MY_ECONF} --enable-gnutls"

		MY_ECONF="
			${MY_ECONF}
			$(use_enable signature)
			$(use_enable cipher)
		"
	fi

	enlightenment_src_compile
}
