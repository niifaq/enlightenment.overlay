# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit enlightenment

DESCRIPTION="Exquisite - EFL based psplash replacement"
IUSE=""

DEPEND="
		=dev-libs/eet-9999
		=x11-libs/evas-9999
		=x11-libs/ecore-9999
		=dev-libs/embryo-9999
		=media-libs/edje-9999
"

RDEPEND="${DEPEND}"

src_install() {
	    dodoc README AUTHORS

	    insinto "/usr/share/doc/${PF}/examples"
	    doins -r demo/run-demo.sh
	    emake DESTDIR="${D}" install
}
