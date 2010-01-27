# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="ETK interface building language and GUI frontend"

IUSE=""

DEPEND="
	>=dev-libs/eet-0.9.10
	>=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0
	>=x11-libs/etk-0.1.0
"

RDEPEND="${DEPEND}"
