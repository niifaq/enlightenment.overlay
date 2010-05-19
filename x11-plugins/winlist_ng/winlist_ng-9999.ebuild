# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_DOC="yes"
ESVN_SUB_PROJECT="E-MODULES-EXTRA"
inherit efl

DESCRIPTION="This module - different e17 winlist"
HOMEPAGE="http://code.google.com/p/itask-module"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999"

RDEPEND="${DEPEND}"
