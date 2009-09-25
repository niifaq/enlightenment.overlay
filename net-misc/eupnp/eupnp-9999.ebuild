# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="event-driven lightweight UPnP library written in C."

IUSE=""

DEPEND="dev-libs/libxml2
	>=dev-libs/eina-9999
	>=x11-libs/ecore-9999[curl]"

RDEPEND="${DEPEND}"

src_prepare() {
	export AT_M4DIR="-I m4"

	enlightenment_src_prepare
}
