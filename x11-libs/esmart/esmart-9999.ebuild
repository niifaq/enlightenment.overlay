# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_OLD_PROJECT="yes"

inherit efl

DESCRIPTION="A collection of evas smart objects"

IUSE=""

DEPEND="
	>=media-libs/evas-9999
	>=dev-libs/ecore-9999
	>=media-libs/edje-9999
	>=media-libs/imlib2-9999
	>=dev-libs/eina-9999
"

RDEPEND="${DEPEND}"
