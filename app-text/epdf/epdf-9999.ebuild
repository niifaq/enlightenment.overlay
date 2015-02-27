# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

E_PKG_IUSE="doc"
ESVN_SUB_PROJECT="PROTO"
E_NO_VISIBILITY="1"
inherit efl

DESCRIPTION="View PDF files using EFL applications."
IUSE=""

RDEPEND="
	>=app-text/poppler-0.12
	>=dev-libs/efl-1.11.2
"
DEPEND="${RDEPEND}"

src_compile() {
	emake -j1 || die "emake failed"

	if use doc; then
		emake doc || die "emake doc failed"
	fi
}
