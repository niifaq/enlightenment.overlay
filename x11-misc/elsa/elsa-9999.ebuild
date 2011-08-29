# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="static-libs"
ESVN_SUB_PROJECT="PROTO"

inherit efl

DESCRIPTION="EFL based login manager"

IUSE="consolekit pam"

RDEPEND=">=media-libs/edje-9999
	>=media-libs/elementary-9999
	consolekit? ( sys-auth/consolekit )
	pam? ( virtual/pam )
	"

DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
	$(use_enable pam)
	$(use_enable consolekit)
	"

	efl_src_configure
}
