# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="Weather information fetching and parsing framework"

LICENSE="LGPL-2.1"
IUSE=""

DEPEND=">=x11-wm/enlightenment-0.16.999
	>=x11-libs/ecore-9999
	>=media-libs/edje-9999"

RDEPEND="${DEPEND}"
