# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_REPO_URI="http://itask-module.googlecode.com/svn/trunk/${PN}"
inherit enlightenment

DESCRIPTION="This module - different e17 winlist"
HOMEPAGE="http://code.google.com/p/itask-module"

IUSE=""

DEPEND=">=x11-wm/e-0.16.999.039
	media-libs/edje
	dev-libs/efreet"
