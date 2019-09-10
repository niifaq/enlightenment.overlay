# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/discomfitor"
inherit efl

DESCRIPTION="EFL http client/server library"
LICENSE="LGPL-2"

IUSE="static-libs"

RDEPEND="|| (	>=dev-libs/efl-9999[gnutls]
				>=dev-libs/efl-9999[openssl] )"

DEPEND="${RDEPEND}"
