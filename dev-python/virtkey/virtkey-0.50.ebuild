# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1
NEED_PYTHON="2.4"
inherit python distutils

DESCRIPTION="python extension for emulating keypresses and getting current keyboard layout"
SRC_URI="http://code.launchpad.net/${PN}/trunk/${PV}/+download/python-${P}.tar.gz"
HOMEPAGE="https://launchpad.net/virtkey"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="x11-libs/libXext
	x11-libs/libX11
	x11-libs/libXtst
	x11-libs/gtk+:2"

DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

S="${WORKDIR}"

src_unpack() {
	unpack ${A}
	cd "${S}"
}
