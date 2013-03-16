# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
inherit efl

DESCRIPTION="ConnMan User Interface written using the EFL"

IUSE=""

DEPEND=">=dev-python/python-elementary-9999
	>=dev-python/python-e_dbus-9999"

RDEPEND="
	>=media-libs/elementary-9999
	${DEPEND}"
