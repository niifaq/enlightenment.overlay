# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="library for editing the contents of edje files"

IUSE=""

DEPEND="
	>=dev-libs/ecore-0.9.9
	>=media-libs/evas-0.9.9
"

RDEPEND="${DEPEND}"
