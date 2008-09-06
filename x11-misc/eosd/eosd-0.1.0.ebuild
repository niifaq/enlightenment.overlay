# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-misc/eosd/eosd-0.1.0.ebuild,v 1.8 2005/07/26 13:59:26 dholm Exp $

inherit enlightenment

DESCRIPTION="enlightened on-screen display draws anti-aliased text on your screen without creating a visible window"
HOMEPAGE="http://code-monkey.de/?eosd"
SRC_URI="ftp://code-monkey.de/pub/eosd/${P}.tar.gz"

LICENSE="LGPL-2.1"

DEPEND=">=media-libs/imlib2-1.2.0
	>=x11-libs/ecore-0.9.9"
