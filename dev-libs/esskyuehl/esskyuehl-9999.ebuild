# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="libs"

inherit efl

DESCRIPTION="Your one-stop shop for all things E and SQL!"
HOMEPAGE="http://enlightenment.org"

IUSE=""

RDEPEND="
	>=dev-libs/efl-9999
"

DEPEND="
	${RDEPEND}
"

