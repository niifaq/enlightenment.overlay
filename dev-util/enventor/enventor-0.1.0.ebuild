# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="An EDC editor"
HOMEPAGE="https://www.enlightenment.org/"
SRC_URI="http://download.enlightenment.org/rel/apps/${PN}/${P%.0}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs"

RDEPEND="
	>=dev-libs/efl-1.8.1"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_configure() {
	econf $(use_enable static-libs static)
}
