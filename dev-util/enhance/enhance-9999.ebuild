# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/enhance/enhance-9999.ebuild,v 1.1 2006/02/11 05:21:25 vapier Exp $

EVCS_MODULE="enhance"
inherit enlightenment

DESCRIPTION="GUI developer for E17 using GLADE, EXML, and ETK"

IUSE=""

DEPEND=">=dev-libs/exml-0.1.1
	>=x11-libs/ecore-0.9.9
	>=x11-libs/etk-0.1.0"
