# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="6"
ESVN_SUB_PROJECT="PROTO"

inherit efl

DESCRIPTION="Enlightenment way to exchange contributed stuff"
HOMEPAGE="http://www.enlightenment.org/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND="
	>=dev-libs/efl-9999
	dev-libs/libxml2
"

RDEPEND="${DEPEND}"

src_configure() {
	export MY_ECONF="
	  ${MY_ECONF}
	  --disable-etk
	  --disable-ewl
	"

	efl_src_configure
}
