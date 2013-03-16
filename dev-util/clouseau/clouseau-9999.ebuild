# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="tools"
inherit efl

DESCRIPTION="EFL UI debugging tool"
IUSE=""

RDEPEND=" >=media-libs/elementary-9999 "
DEPEND="${RDEPEND}"
