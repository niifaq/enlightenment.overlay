# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="Tool to display ETK dialogs from the command line and shell scripts"

IUSE=""

DEPEND="x11-libs/etk"
RDEPEND="${DEPEND}"

src_compile() {
	export MY_ECONF="$(use_enable nls)"

	enlightenment_src_compile
}
