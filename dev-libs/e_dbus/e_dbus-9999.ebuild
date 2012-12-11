# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

E_PKG_IUSE="doc"
inherit efl

DESCRIPTION="Enlightenment's (Ecore) integration to DBus"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/E_Dbus"

IUSE="connman bluetooth ofono ukit"

RDEPEND="
	>=dev-libs/efl-9999
	sys-apps/dbus
	ofono? ( net-misc/ofono )
	connman? ( net-misc/connman )
	ukit? ( sys-power/upower sys-fs/udisks:0 )"
DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
	  ${MY_ECONF}
	  $(use_enable connman econnman)
	  --enable-enotify
	  $(use_enable bluetooth ebluez)
	  $(use_enable ofono eofono)
	  $(use_enable ukit eukit)
	"
	efl_src_configure
}
