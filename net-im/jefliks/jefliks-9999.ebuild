# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc nls"
EGIT_REPO_URI="git://jefliks.git.sourceforge.net/gitroot/jefliks/jefliks"

inherit eutils git-2

DESCRIPTION="EFL-based tiny and fast Jabber client"
HOMEPAGE="http://sourceforge.net/projects/jefliks"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

DEPEND=">=dev-libs/eina-9999
	>=dev-libs/eet-9999
	>=media-libs/evas-9999
	>=dev-libs/ecore-9999
	>=media-libs/edje-9999
	>=media-libs/elementary-9999
	net-libs/gnutls
	dev-libs/iksemel"

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
