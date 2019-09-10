# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="libs"
inherit efl

DESCRIPTION="Enlightenment's weather information fetching and parsing framework"
IUSE=""

LICENSE="LGPL-2.1"

RDEPEND=">=dev-libs/efl-9999"

DEPEND="${RDEPEND}"
