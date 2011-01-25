# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc cache"
inherit efl

DESCRIPTION="library for handling of freedesktop.org specs (desktop/icon/theme/etc...)"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Efreet"
IUSE=""

RDEPEND="
	>=dev-libs/ecore-9999
	>=dev-libs/eina-9999
	x11-misc/xdg-utils"
DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
	    ${MY_ECONF}
	    $(use_enable cache icon-cache)
	"
	efl_src_configure
}