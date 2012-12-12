# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
E_PKG_IUSE="doc"
inherit efl

DESCRIPTION="wrapper between Bullet Physics and EFL to add physics effects in a simple way"
IUSE="test-gui"

RDEPEND="
	>=sci-physics/bullet-2.79
	>=dev-libs/efl-9999
	test-gui? ( >=media-libs/elementary-9999 )
"
DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_enable test-gui build-tests)
	"
	efl_src_configure
}
