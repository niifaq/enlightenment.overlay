# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="nls"

ESVN_URI_APPEND="${PN#e_modules-}"
inherit efl

ESVN_REPO_URI="http://svn.enlightenment.org/svn/e/BROKEN/E-MODULES-EXTRA/drawer/"
DESCRIPTION="A drawer module, which is/will be able to present different types of information"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/ethumb-9999
	>=media-libs/edje-9999"

RDEPEND="${DEPEND}"
