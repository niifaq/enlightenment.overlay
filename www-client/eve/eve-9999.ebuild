# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="Eve - a web browser using the EFL and Webkit"

IUSE=""

DEPEND="
	>=media-libs/edje-9999
	>=net-libs/webkit-efl-9999
"

RDEPEND="${DEPEND}"
