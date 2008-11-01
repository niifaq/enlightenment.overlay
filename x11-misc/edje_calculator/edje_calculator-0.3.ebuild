# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="functional calculator completly made in edje"
HOMEPAGE="http://www.gurumeditation.it/blog/enlightenment/calculator/"
SRC_URI="http://www.gurumeditation.it/blog/wp-content/uploads/releases/calculator03.tgz"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="x11-misc/edje_player"

S="${WORKDIR}"

src_install() {
				cd ${WORKDIR}/calculator
				edje_cc calculator.edc edje_calculator.edje
				exeinto /opt/edje_calculator
				doexe edje_calculator.edje
				insinto /usr/share/applications
				doins ${FILESDIR}/edje_calculator.desktop
				dodir /usr/share/pixpmaps
				insinto /usr/share/pixmaps
				doins ${FILESDIR}/edje_calculator.png
}

