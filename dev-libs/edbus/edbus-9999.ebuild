# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

E_PKG_IUSE="doc"
ESVN_SUB_PROJECT="IN-EFL"
inherit efl

DESCRIPTION="EDBus provides easy access to D-Bus from EFL applications"
HOMEPAGE="http://enlightenment.org/"

IUSE=""

RDEPEND="
	!dev-libs/efl
	sys-apps/dbus"

DEPEND="${RDEPEND}"
