# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_REPO_URI="http://e17mods.googlecode.com/svn/trunk/MODULES/${PN}"
inherit enlightenment

DESCRIPTION="E17 Module that manage the mounting of volumes"
HOMEPAGE="http://code.google.com/p/e17mods/wiki/Places"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=x11-wm/e-0.16.999.050
	media-libs/edje"
