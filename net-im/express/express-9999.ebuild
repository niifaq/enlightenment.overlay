# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-im/express/express-9999.ebuild,v 1.2 2006/07/16 04:48:49 vapier Exp $

ESVN_MODULE="BROKEN/${PN}"
inherit enlightenment

DESCRIPTION="EFL based instant messaging program"

DEPEND=">=x11-libs/esmart-0.9.0
	>=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0"
