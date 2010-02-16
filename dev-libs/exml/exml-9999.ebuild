# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit enlightenment

DESCRIPTION="an E17 xml parser"

IUSE=""

DEPEND=">=dev-libs/libxml2-2.6.13
	>=dev-libs/libxslt-1.1.10
	>=dev-libs/ecore-0.9.9"

RDEPEND="${DEPEND}"
