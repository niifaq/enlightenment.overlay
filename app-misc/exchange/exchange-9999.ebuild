# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/e_utils/e_utils-9999.ebuild,v 1.5 2005/05/25 00:00:27 vapier Exp $

EVCS_MODULE="PROTO/${PN}"
inherit enlightenment

DESCRIPTION="Enlightenment way to exchange contributed stuff"

IUSE="etk ewl"

DEPEND="
		dev-libs/eina
		x11-libs/ecore
		media-libs/edje
		dev-libs/libxml2

		ewl? ( x11-libs/ewl )
		etk? ( x11-libs/etk )
"

src_compile() {
	MY_ECONF="
		$(use_enable etk)
		$(use_enable ewl)
	"

	enlightenment_src_compile
}
