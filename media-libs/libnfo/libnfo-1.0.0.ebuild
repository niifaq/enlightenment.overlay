# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils flag-o-matic

IUSE="doc debug"

DESCRIPTION="An NFO file parser/writer library"
HOMEPAGE="http://libnfo.geexbox.org/"
SRC_URI="http://${PN}.geexbox.org/releases/${P}.tar.bz2"

RDEPEND="dev-libs/libxml2"

DEPEND="doc?	( >=app-doc/doxygen-1.5.5 )
		${RDEPEND}"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_prepare() {
	#FIXME: we really need more sophisticated patch, which will really fix
	#build-system without just shutting it up =)
	epatch "${FILESDIR}"/"${P}-fix-configure-exit-on-unknown-option.patch"
}

src_configure() {
	local myconf="
		$(use_enable doc)
		$(use_enable debug)
	"
	econf ${myconf} || die "configure failed"
}

src_install() {
	 emake -j1 DESTDIR="${D}" install || die "install failed"

	dodoc AUTHORS README
}
