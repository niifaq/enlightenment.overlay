# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1
ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="EFL based front end network manager"

IUSE="+dhcp vpnc"

DEPEND=">=dev-libs/eet-9999
	>=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=x11-libs/e_dbus-9999
	>=media-libs/edje-9999
	>=x11-libs/elementary-9999
	net-wireless/wpa_supplicant
	hdcp? ( net-misc/dhcp )
	vpnc? ( net-misc/vpnc )
	"

RDEPEND="${DEPEND}"

src_compile() {
#		$(use_with dhcp) \

	export MY_ECONF="
		$(use_with vpnc) \
		"
	enlightenment_src_compile
}


src_install() {

	sed 's|/usr/local/sbin|/usr/sbin|' -i "${WORKDIR}/exalt/data/daemon/init.d/gentoo" || die "sed filed"
	newinitd "${WORKDIR}/exalt/data/daemon/init.d/gentoo" ${PN}

	enlightenment_src_install
}