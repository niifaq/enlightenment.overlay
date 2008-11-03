# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils fdo-mime 

DESCRIPTION="functional calculator completly made in edje"
HOMEPAGE="http://www.gurumeditation.it/blog/enlightenment/calculator/"
SRC_URI="http://www.gurumeditation.it/blog/wp-content/uploads/releases/calculator03.tgz"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="media-libs/edje
		dev-libs/embryo"
RDEPEND="x11-misc/edje_player"

S="${WORKDIR}"

src_install() {
				cd ${WORKDIR}/calculator
				edje_cc calculator.edc edje_calculator.edj
				exeinto /usr/share/edje_calculator
				doexe edje_calculator.edj
				domenu ${FILESDIR}/edje_calculator.desktop
				doicon ${FILESDIR}/edje_calculator.png
}

