# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_DOC="yes"
E_NO_NLS="yes"
ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"

inherit efl eutils

DESCRIPTION="This module provides a menu-based access to all the windows"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999"

RDEPEND="${DEPEND}"
