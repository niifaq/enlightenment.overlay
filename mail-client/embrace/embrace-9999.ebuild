# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_NLS="yes"
E_NO_DOC="yes"

E_OLD_PROJECT="yes"
ESVN_SUB_PROJECT="MISC"

inherit efl

DESCRIPTION="mail-checker which is based on the EFL"

IUSE="mbox maildir imap"

DEPEND="
	dev-db/edb
	>=dev-libs/ecore-0.9.9
	>=media-libs/evas-0.9.9
	>=media-libs/edje-0.5.0
	>=x11-libs/esmart-0.9.0
"

RDEPEND="${DEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_with mbox) \
		$(use_with maildir) \
		$(use_with imap) \
	"

	efl_src_configure
}
