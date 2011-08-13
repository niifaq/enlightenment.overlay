# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="nls"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

DESCRIPTION="Interface for Shotgun Instant Messanger"

IUSE=""

DEPEND=">=x11-wm/enlightenment-9999[enlightenment_modules_everything]
		>=media-libs/edje-9999"

RDEPEND="${DEPEND}"
