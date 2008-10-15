# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/etk/etk-9999.ebuild,v 1.1 2005/11/09 00:03:22 vapier Exp $

EVCS_MODULE="edje_viewer"
inherit enlightenment

DESCRIPTION="edje viewer based on etk"

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/edje
	x11-libs/etk
	x11-wm/e"
