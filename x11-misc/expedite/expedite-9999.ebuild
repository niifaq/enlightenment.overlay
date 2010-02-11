# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit enlightenment

DESCRIPTION="Comprehensive test suite for Evas"

IUSE="X opengl sdl"

RDEPEND=">=x11-libs/evas-9999[X?,opengl?,sdl?]"
DEPEND="${RDEPEND}"
