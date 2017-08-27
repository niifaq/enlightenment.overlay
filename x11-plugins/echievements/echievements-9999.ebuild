# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
E_PKG_IUSE="nls"
EGIT_REPO_URI="https://github.com/zmike/echievements.git"

inherit git-2 efl

DESCRIPTION="Show enlightenment echievements"

LICENSE="BSD-2"
IUSE=""

RDEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999
	>=dev-games/etrophy-9999"

DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_unpack() {
git-2_src_unpack
}
#src_prepare() {
#	S="${PN}-2"
#efl_src_prepare
#}