# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit autotools-utils eutils

DESCRIPTION="An offline dictionary reader, made in C with Enlightenment Elementary UI"
HOMEPAGE="http://www.vaudano.eu/wiki/en/estardict"
SRC_URI="http://www.vaudano.eu/projects/${PN}/05/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="nls"

DEPEND=">=media-libs/evas-1.1
	>=media-libs/edje-1.1
	>=media-libs/elementary-0.8"

RDEPEND="${DEPEND}"

src_configure() {
	local  myeconfargs=(
		$(use_enable nls)
		)
	autotools-utils_src_configure
}

src_install() {
	strip-linguas -i po/

	autotools-utils_src_install LINGUAS="${LINGUAS}"
}
