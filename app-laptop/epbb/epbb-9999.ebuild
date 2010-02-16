# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD/MISC"
inherit enlightenment

DESCRIPTION="a pbbuttonsd client using the EFL"

IUSE=""

DEPEND=">=media-libs/evas-0.9.9
	>=media-libs/edje-0.5.0
	>=dev-libs/ecore-0.9.9
	>=app-laptop/pbbuttonsd-0.5.2"

RDEPEND="${DEPEND}"
