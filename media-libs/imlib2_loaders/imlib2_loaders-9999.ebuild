# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit efl

DESCRIPTION="image loader plugins for Imlib 2"
HOMEPAGE="http://www.enlightenment.org/pages/imlib2.html"

IUSE=""

RDEPEND=">=media-libs/imlib2-9999
	>=dev-libs/efl-9999"

DEPEND="${RDEPEND}"
