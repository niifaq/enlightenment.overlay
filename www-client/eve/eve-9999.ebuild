# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="Eve - a web browser using the EFL and Webkit"

IUSE=""

DEPEND="
	>=media-libs/edje-9999
	>=net-libs/webkit-efl-9999
"

RDEPEND="${DEPEND}"
