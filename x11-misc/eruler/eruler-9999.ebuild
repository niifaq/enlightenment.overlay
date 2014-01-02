# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"

inherit efl

#E_PKG_IUSE="doc nls"

DESCRIPTION="screen rule and measurement tools"

IUSE=""

DEPEND=">=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
