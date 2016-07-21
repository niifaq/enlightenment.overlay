# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

E_EXTERNAL="yes"
WANT_AUTOTOOLS="yes"
E_NO_VISIBILITY="yes"

IUSE="nls"

inherit bzr eutils efl

DESCRIPTION="An offline dictionary reader, made in C with Enlightenment Elementary UI"
HOMEPAGE="http://www.vaudano.eu/wiki/en/estardict"

EBZR_REPO_URI="https://launchpad.net/estardict"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

DEPEND="
	>=dev-libs/efl-9999
"

RDEPEND="${DEPEND}"

src_unpack() {
	bzr_src_unpack

	cd "${S}" || die
}

src_configure() {
	export MY_ECONF="
		$(use_enable nls)
	"

	efl_src_configure
}

src_install() {
	strip-linguas -i po/

	efl_src_install LINGUAS="${LINGUAS}"
}
