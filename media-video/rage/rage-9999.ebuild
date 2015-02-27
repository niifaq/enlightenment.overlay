# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"

inherit efl

DESCRIPTION="Video frontend using the EFL"

IUSE=""

DEPEND="
	>=dev-libs/efl-1.11.2
"

RDEPEND="${DEPEND}"
