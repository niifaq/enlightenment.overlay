# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc nls"

inherit efl

DESCRIPTION="tool for examining images on your desktop"
HOMEPAGE="http://enlightenment.org/pages/elicit.html"

IUSE=""

DEPEND=">=media-libs/evas-0.9.9
	>=dev-libs/ecore-0.9.9
	>=dev-libs/eina-0.9.9
	>=media-libs/edje-0.5.0"

RDEPEND="${DEPEND}"
