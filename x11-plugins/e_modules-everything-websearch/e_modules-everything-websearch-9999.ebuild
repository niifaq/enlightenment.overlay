# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

E_PKG_IUSE="nls"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN#e_modules-}"
inherit efl

DESCRIPTION="everything-websearch module for enlightenment"
IUSE=""

RDEPEND=">=x11-wm/enlightenment-9999[enlightenment_modules_everything]"
DEPEND="${RDEPEND}"
