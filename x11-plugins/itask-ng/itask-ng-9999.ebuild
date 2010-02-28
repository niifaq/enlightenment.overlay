# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_NO_DOC="yes"
inherit efl

ESVN_REPO_URI="http://itask-module.googlecode.com/svn/trunk/itask-ng"
DESCRIPTION="Application launcher and taskbar based on the good old engage"
HOMEPAGE="http://code.google.com/p/itask-module"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999"

RDEPEND="${DEPEND}"
