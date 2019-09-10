# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
E_PKG_IUSE="doc"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/zmike"

inherit efl

DESCRIPTION="A library for 2D effects"

IUSE="+test-gui"

DEPEND="
	>=dev-libs/efl-9999
"

DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_enable test-gui tests)
	"
efl_src_configure
}
