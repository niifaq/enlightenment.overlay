# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-sound/exhibit/emphasis-9999.ebuild,v 1.1 2005/12/31 08:52:10 vapier Exp $

inherit enlightenment

DESCRIPTION="mpd front-end for e17 that uses etk"

DEPEND="x11-libs/ecore
	x11-libs/etk
	media-libs/libmpd
	media-sound/mpd
	dev-util/enhance"
