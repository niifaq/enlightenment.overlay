# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

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
	>=media-libs/elementary-9999
	>=net-im/maelstrom-9999
"

