# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-plugins/e_modules/e_modules-9999.ebuild,v 1.6 2006/09/14 15:21:04 vapier Exp $

EVCS_MODULE="E-MODULES-EXTRA/${PN#e_modules-}"
inherit enlightenment

DESCRIPTION="Moon Clock module for e17"

DEPEND=">=dev-libs/eet-0.9.10
	>=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=dev-libs/embryo-0.5.0
	>=media-libs/edje-0.5.0
	>=x11-wm/e-0.16.999"
