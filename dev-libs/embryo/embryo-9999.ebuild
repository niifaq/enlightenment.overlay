# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc"
inherit efl flag-o-matic

DESCRIPTION="load and control programs compiled in embryo language (small/pawn variant)"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Embryo"
IUSE=""

RDEPEND=">=dev-libs/eina-9999"

src_configure() {
	# embryo_amx.c will hang graphite when processed
	# Probably we should post a bug on gcc
	# But it's nearly impossible to understand what this one giant hack
	# does.
	# Maybe later, by now we will just filter this flags out.

	einfo "Filtering -floop* CFLAGS"
	filter-flags -floop*

	efl_src_configure
}
