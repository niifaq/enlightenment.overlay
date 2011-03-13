# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc nls"
PYTHON_DEPEND="*:2.4"
inherit python distutils versionator

MY_PV=$(get_version_component_range 1-2)

DESCRIPTION="python extension for emulating keypresses and getting current keyboard layout"
SRC_URI="http://launchpad.net/python-virtkey/${MY_PV}/${PV}/+download/python-${P}.tar.gz"
HOMEPAGE="https://launchpad.net/virtkey"
LICENSE="LGPL-3"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="x11-libs/libXext
	x11-libs/libX11
	x11-libs/libXtst
	x11-libs/gtk+:2"

DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

S="${WORKDIR}/python-${P}"

src_unpack() {
	unpack ${A}
	cd "${S}"
}
