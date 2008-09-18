# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/etk/etk-9999.ebuild,v 1.1 2005/11/09 00:03:22 vapier Exp $

EVCS_MODULE="edje_editor"
inherit enlightenment

DESCRIPTION="edje editor based on etk"

DEPEND=">=x11-libs/ecore-0.9.9.037
	>=x11-libs/etk-0.1.0.002
	>=media-libs/edje-0.5.0
	>=dev-libs/engrave-0.1.0
	>=x11-libs/evas-0.9.9"
