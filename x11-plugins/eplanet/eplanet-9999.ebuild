# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="nls"
inherit efl

ESVN_REPO_URI="http://eplanet.googlecode.com/svn/trunk"
DESCRIPTION="Use XPlanet backgrounds in E17"
HOMEPAGE="http://www.squaregoldfish.co.uk/software/eplanet"

LICENSE="GPL-3"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999
	x11-misc/xplanet"

RDEPEND="${DEPEND}"

src_unpack() {

	AT_M4DIR="-I m4"

	efl_src_unpack

}
