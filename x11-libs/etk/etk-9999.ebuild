# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="OLD"
inherit enlightenment

DESCRIPTION="toolkit based on the EFL"

IUSE="X fbcon"

DEPEND=">=x11-libs/evas-9999
	>=media-libs/edje-9999
	>=x11-libs/ecore-9999"

RDEPEND="${DEPEND}"

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
