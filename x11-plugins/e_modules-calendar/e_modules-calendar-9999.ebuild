# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"

E_PKG_IUSE="nls"

ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

ESVN_REPO_URI="http://svn.enlightenment.org/svn/e/OLD/E-MODULES-EXTRA/calendar/"
DESCRIPTION="Calendar module for e17"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999"

RDEPEND="${DEPEND}"
