# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

E_PKG_IUSE="nls"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="enlightenment/modules"
EFL_GIT_REPO_NAME="${PN#e_modules-}"
inherit efl

DESCRIPTION="E17 Module that manage the mounting of volumes"

IUSE="eeze e_dbus +eldbus"

DEPEND="x11-wm/enlightenment:0.17
	>=dev-libs/efl-9999
	e_dbus? ( dev-libs/e_dbus )"

RDEPEND="${DEPEND}"

src_configure() {
	export MY_ECONF="
		$(use_enable eeze)
		$(use_enable e_dbus udisks)
		$(use_enable eldbus eldbus)
	"
efl_src_configure
}