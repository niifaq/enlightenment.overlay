# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/etk/etk-9999.ebuild,v 1.1 2005/11/09 00:03:22 vapier Exp $

inherit enlightenment

SRC_URI="http://download.enlightenment.org/snapshots/2007-08-26/${P}.tar.gz"

DESCRIPTION="toolkit based on the EFL"

IUSE="nls X fbcon"

DEPEND=">=x11-libs/evas-0.9.9.041
	>=media-libs/edje-0.5.0.041
	>=x11-libs/ecore-0.9.9.041"

pkg_setup() {
	if ! built_with_use x11-libs/evas png ; then
		eerror "Re-emerge evas with USE=png"
		die "Re-emerge evas with USE=png"
	fi

	local flag
	for flag in fbcon X ; do
		if use ${flag} ; then
			if ! built_with_use x11-libs/ecore ${flag} ; then
				eerror "Re-emerge ecore with USE=${flag}"
				die "Re-emerge ecore with USE=${flag}"
			fi
		fi
	done

	enlightenment_pkg_setup
}

src_compile() {
	export MY_ECONF="
		$(use_enable nls)
	"
	enlightenment_src_compile
}
