# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"

E_PKG_IUSE="nls"

ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

ESVN_REPO_URI="http://svn.enlightenment.org/svn/e/BROKEN/E-MODULES-EXTRA/drawer/"
DESCRIPTION="A drawer module, which is/will be able to present different types of information"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
