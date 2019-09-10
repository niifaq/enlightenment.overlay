# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI=5

ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="xmpp client/library which uses EFL"

LICENSE="BSD-2"
IUSE="azy dbus"

DEPEND="
	>=dev-libs/efl-9999
	>=dev-libs/efx-9999
	>=net-libs/azy-9999
	dbus? ( >=dev-libs/e_dbus-9999 )
"

RDEPEND="${DEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_enable dbus edbus)
		--enable-enotify
	"

	efl_src_configure
}

pkg_postinst() {
	einfo "Tip: if your XMPP server doesn't have valid SSL certificate,"
	einfo "you should add --noverify command line option to ignore checks"
}
