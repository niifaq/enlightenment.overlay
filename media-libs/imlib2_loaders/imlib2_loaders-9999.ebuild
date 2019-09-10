# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="legacy"
inherit efl

DESCRIPTION="Additional image loaders for imlib2"
HOMEPAGE="http://www.enlightenment.org/pages/imlib2.html"

IUSE=""

RDEPEND=">=media-libs/imlib2-9999
	>=dev-libs/efl-9999"

DEPEND="${RDEPEND}"
