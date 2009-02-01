# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_REPO_URI="http://e17mods.googlecode.com/svn/trunk/MODULES/${PN}"
inherit enlightenment

DESCRIPTION="E17 Freedesktop compliant trash module"
HOMEPAGE="http://code.google.com/p/e17mods/wiki/Trash"

LICENSE="GPL-2"

IUSE=""

DEPEND="
	x11-wm/enlightenment
	media-libs/edje
	"
