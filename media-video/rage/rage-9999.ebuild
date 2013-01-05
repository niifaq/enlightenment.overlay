# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit efl

DESCRIPTION="Video frontend using the EFL"

IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	>=media-libs/emotion-9999"

RDEPEND="${DEPEND}"
