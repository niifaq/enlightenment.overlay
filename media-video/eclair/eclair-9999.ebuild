# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_NLS="yes"
E_NO_DOC="yes"

E_OLD_PROJECT="yes"

inherit efl

DESCRIPTION="EFL powered media player"

IUSE=""

RDEPEND="media-libs/taglib
	media-libs/evas
	dev-libs/ecore
	media-libs/edje
	media-libs/emotion
	x11-libs/esmart
	dev-libs/libxml2
	>=dev-db/sqlite-3"
DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.17"
