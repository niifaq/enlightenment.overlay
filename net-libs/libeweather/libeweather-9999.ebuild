# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="libs"
inherit efl

DESCRIPTION="Enlightenment's weather information fetching and parsing framework"
IUSE=""

LICENSE="LGPL-2.1"

RDEPEND=">=dev-libs/efl-9999"

DEPEND="${RDEPEND}"
