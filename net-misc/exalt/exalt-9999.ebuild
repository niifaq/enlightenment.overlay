# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit efl

DESCRIPTION="EFL based front end network manager"

IUSE="+dhcp vpnc"

DEPEND="
	>=dev-libs/efl-9999
	>=dev-libs/e_dbus-9999
	>=media-libs/edje-9999
	>=media-libs/elementary-9999
	net-wireless/wpa_supplicant
	dhcp? ( net-misc/dhcp )
	vpnc? ( net-misc/vpnc )
"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_configure() {
	export MY_ECONF="$(use_with vpnc)"

	efl_src_configure
}

src_install() {
	sed 's|/usr/local/sbin|/usr/sbin|' -i data/daemon/init.d/gentoo || die "sed filed"
	newinitd data/daemon/init.d/gentoo ${PN}

	insinto /etc/dbus-1/system.d/
	doins data/daemon/dbus/exalt.conf

	efl_src_install
}
