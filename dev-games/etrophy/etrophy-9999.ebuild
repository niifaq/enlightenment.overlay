# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="Library for games to manage scores, trohpies and unlockables"
IUSE="static-libs"

RDEPEND=">=media-libs/elementary-9999"
DEPEND="${RDEPEND}"
