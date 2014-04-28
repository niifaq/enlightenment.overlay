# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

#E_NO_VISIBILITY="1"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="devs/kuuko"
E_PKG_IUSE="static-libs"

inherit efl

DESCRIPTION="View and edit Edje (EDC/EDJ) files."
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Editje"
LICENSE="GPL-3"
IUSE=""

RDEPEND="
	>=dev-python/python-efl-9999"

DEPEND=">=dev-libs/efl-9999"

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	mv "${D}/usr/bin/editje-bin" "${D}/usr/bin/editje" || die
	sed -i -e 's/editje-bin/editje/' \
		"${D}/usr/share/applications/editje.desktop" || die
}
