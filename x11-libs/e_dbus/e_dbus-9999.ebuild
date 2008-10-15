# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="enlightenment interface to dbus"

IUSE="X"

# Removed EWL GUI due to lack of updated code in SVN
#	X? ( x11-libs/ewl dev-libs/efreet )
DEPEND=">=x11-libs/ecore-9999
	sys-apps/dbus
	sys-apps/hal
	dev-libs/eina"
