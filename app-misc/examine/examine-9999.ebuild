# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="configuration library for applications based on the EFL"

IUSE=""

DEPEND=">=dev-libs/eet-0.9.0
	>=dev-db/edb-1.0.5
	>=x11-libs/ewl-0.0.4
	>=x11-libs/ecore-0.9.9
	sys-libs/readline"
