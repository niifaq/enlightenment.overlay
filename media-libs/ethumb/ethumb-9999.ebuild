# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc"
ESVN_SUB_PROJECT="IN-EFL"
inherit efl

DESCRIPTION="Enlightenment's thumbnailing library"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Ethumb"

LICENSE="LGPL-3"

IUSE="+dbus emotion epdf debug"

RDEPEND="
	>=dev-libs/efl-9999
	epdf? ( >=app-text/epdf-9999 )"

DEPEND="
	!dev-libs/efl
	${RDEPEND}"

src_configure() {
	local DEBUG_FLAGS=""

	if ! use debug; then
		DEBUG_FLAGS="--with-internal-maximum-log-level=2"
	fi

	export MY_ECONF="
	  ${MY_ECONF}
	  --with-dbus-services=/usr/share/dbus-1/services
	  $(use_enable dbus ethumbd)
	  $(use_enable emotion)
	  $(use_enable epdf)
	  ${DEBUG_FLAGS}"

	efl_src_configure
}
