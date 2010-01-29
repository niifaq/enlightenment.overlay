# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="enlightenment interface to dbus"

IUSE=""

# Removed EWL GUI due to lack of updated code in SVN
#	X? ( x11-libs/ewl dev-libs/efreet )
DEPEND=">=x11-libs/ecore-9999
	dev-libs/eina
	sys-apps/dbus
	sys-apps/hal
	X? ( x11-libs/ewl dev-libs/efreet )
	"

RDEPEND="${DEPEND}"

#src_compile() {
#	export MY_ECONF="
#		$(use_enable X build-test-gui)
#	"
#	enlightenment_src_compile
#}
