# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/discomfitor"
E_PKG_IUSE="doc"

inherit efl

HOMEPAGE="https://enlightenment.org"
DESCRIPTION="A whirling maelstrom of network libraries"

IUSE="+maelstrom_modules_email +maelstrom_modules_shotgun +maelstrom_modules_azy cpu_flags_x86_sse cpu_flags_x86_sse4"

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	>=dev-libs/efl-9999
"

src_configure() {
	econf \
		$(use_enable maelstrom_modules_email email) \
		$(use_enable maelstrom_modules_shotgun shotgun) \
		$(use_enable maelstrom_modules_azy azy) \
		$(use_enable doc) \
		--disable-mysql-tests \
		--enable-sawedoff-homedir-install
}
