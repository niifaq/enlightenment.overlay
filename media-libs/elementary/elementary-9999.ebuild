# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="TMP/st"
inherit enlightenment

DESCRIPTION="Basic widget set, based on EFL for mobile touch-screen devices."

IUSE=""

DEPEND=">=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=media-libs/edje-9999
	>=x11-libs/e_dbus-9999
	>=dev-libs/efreet-9999
	>=net-libs/libeweather-9999
"

RDEPEND="${DEPEND}"
