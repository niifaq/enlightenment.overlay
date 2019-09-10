# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI=4

inherit git-2 eutils autotools-utils

DESCRIPTION="graphical application that display the periodic table of the elements"
HOMEPAGE="http://eperiodique.sourceforge.net/"
EGIT_REPO_URI="https://${PN}.git.sourceforge.net/gitroot/${PN}/${PN}"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""

IUSE="nls"

RDEPEND="
	>=dev-libs/efl-9999
"

DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	local  myeconfargs=(
		$(use_enable nls)
		)
		#$(use_enable pictures minimal)
	autotools-utils_src_configure
}

src_install() {
	strip-linguas -i po/

	autotools-utils_src_install LINGUAS="${LINGUAS}"
}
