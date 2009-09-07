# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="A sticky notes application based on ETK"

IUSE=""

DEPEND="x11-libs/etk
	dev-libs/eet"

RDEPEND="${DEPEND}"

src_compile() {
	export MY_ECONF="
		$(use_enable nls)
	"
	enlightenment_src_compile
}
