# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_2,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="Python bindings for the EFL"
HOMEPAGE="http://www.enlightenment.org/"
SRC_URI="http://download.enlightenment.org/rel/bindings/python/${P}.tar.bz2"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	>=dev-libs/efl-1.8.1:0
	>=media-libs/elementary-1.8.0:0
	>=dev-python/dbus-python-0.83.0:0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
