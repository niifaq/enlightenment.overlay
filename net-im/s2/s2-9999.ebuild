# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/discomfitor"

inherit efl

HOMEPAGE="http://enlightenment.org"
DESCRIPTION="Next-gen modular XMPP application framework"

IUSE=""

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	>=dev-libs/efl-9999
	>=net-im/maelstrom-9999
"

