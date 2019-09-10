# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PKG_IUSE="doc"
ESVN_SUB_PROJECT="PROTO"

inherit efl

DESCRIPTION="Enlightenment's UPnP/DLNA framework"
IUSE="examples test"

LICENSE="LGPL-3"

RDEPEND="
	>=dev-libs/efl-9999
	dev-libs/libxml2"

DEPEND="
	${RDEPEND}
	test? ( dev-libs/check )"

src_configure() {
	export MY_ECONF="
	  ${MY_ECONF}
	  $(use_enable test tests)
	  $(use_enable examples)
	  $(use_enable examples tools)
	  --enable-eupnp-ecore
	  --enable-eupnp-av
	"

	efl_src_configure
}
