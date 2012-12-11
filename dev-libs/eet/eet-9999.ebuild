# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc test"
ESVN_SUB_PROJECT="IN-EFL"
inherit efl

DESCRIPTION="E file chunk reading/writing library"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Eet"

IUSE="+threads debug gnutls ssl"

RDEPEND="virtual/jpeg
	>=dev-libs/eina-9999
	sys-libs/zlib
	gnutls? ( net-libs/gnutls )
	!gnutls? ( ssl? ( dev-libs/openssl ) )"
DEPEND="
	!dev-libs/efl
	${RDEPEND}
"

src_configure() {
	local SSL_FLAGS="" DEBUG_FLAGS="" TEST_FLAGS=""

	# ???: should we use 'use_enable' for these as well?
	if use debug; then
		DEBUG_FLAGS="
		  --disable-amalgamation
		  --enable-assert
		"
	else
		DEBUG_FLAGS="
		  --enable-amalgamation
		  --disable-assert
		"
	fi

	if use test; then
		TEST_FLAGS="
		  --enable-tests
		  --enable-coverage
		"
	fi

	if use gnutls; then
		if use ssl; then
			ewarn "You have enabled both 'ssl' and 'gnutls', so we will use"
			ewarn "gnutls and not openssl for cipher and signature support"
		fi
		SSL_FLAGS="
		  --enable-cipher
		  --enable-signature
		  --disable-openssl
		  --enable-gnutls
		"
	elif use ssl; then
		SSL_FLAGS="
		  --enable-cipher
		  --enable-signature
		  --enable-openssl
		  --disable-gnutls
		"
	else
		SSL_FLAGS="
		  --disable-cipher
		  --disable-signature
		  --disable-openssl
		  --disable-gnutls
		"
	fi

	export MY_ECONF="
	  ${MY_ECONF}
	  $(use_enable threads posix-threads)
	  ${SSL_FLAGS}
	  ${DEBUG_FLAGS}
	  ${TEST_FLAGS}
	"

	efl_src_configure
}
