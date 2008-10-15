# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EVCS_MODULE="elitaire"
inherit enlightenment games

DESCRIPTION="EFL based solitaire game"
HOMEPAGE="http://www.mowem.de/elitaire"

DEPEND="x11-libs/ewl
	media-libs/edje
	dev-libs/eet
	x11-libs/evas
	x11-libs/ecore
	x11-libs/esmart"

pkg_setup() {
	games_pkg_setup
	enlightenment_pkg_setup
}

src_compile() {
	export MY_ECONF="
		--with-scores-group=${GAMES_GROUP}
		--with-scores-user=${GAMES_USER}
		--localstatedir=\"${GAMES_STATEDIR}\"
	"
	enlightenment_src_compile
}
