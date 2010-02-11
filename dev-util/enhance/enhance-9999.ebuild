# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_BRANCH="/"
ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="GUI developer for E17 using GLADE, EXML, and ETK"

IUSE=""

DEPEND=">=dev-libs/exml-0.1.1
	>=x11-libs/ecore-0.9.9
	>=x11-libs/etk-0.1.0"

RDEPEND="${DEPEND}"
