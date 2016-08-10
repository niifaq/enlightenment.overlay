# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

E_PKG_IUSE="doc nls"
EGIT_REPO_URI="git://jefliks.git.sourceforge.net/gitroot/jefliks/jefliks"

inherit eutils git-r3

DESCRIPTION="EFL-based tiny and fast Jabber client"
HOMEPAGE="http://sourceforge.net/projects/jefliks"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND="
	>=dev-libs/efl-1.11.2
	net-libs/gnutls
	dev-libs/iksemel
"

RDEPEND="${DEPEND}"

#TODO Change category in desktop file to:
#Categories=Network;InstantMessaging;

src_compile() {
	emake || die "emake failed"
	make jefliks.desktop || die "make desktop failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"

#	insinto /usr/share/icons/hicolor/scalable/apps/
#	doins logo.svg

	domenu jefliks.desktop
}
