# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

E_PKG_IUSE="nls"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN#e_modules-}"
inherit efl

DESCRIPTION="Places interface for everything"

IUSE=""

DEPEND=">=x11-wm/enlightenment-9999[enlightenment_modules_everything]
		>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
