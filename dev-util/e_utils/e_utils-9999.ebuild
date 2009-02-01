# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/e_utils/e_utils-9999.ebuild,v 1.5 2005/05/25 00:00:27 vapier Exp $

EVCS_MODULE="OLD/${PN}"
inherit enlightenment

DESCRIPTION="collection of utils for e17"

IUSE=""

DEPEND=">=dev-libs/eet-0.9.10
	x11-wm/e
	>=x11-libs/esmart-0.9.0.002
	>=x11-libs/ewl-0.0.4
	>=dev-libs/engrave-0.1.0
	>=x11-libs/ecore-0.9.9
	>=x11-libs/evas-0.9.9"
