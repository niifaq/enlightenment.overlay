# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
EGIT_REPO_URI="git://github.com/Watchwolf/Enki.git"
inherit enlightenment git

DESCRIPTION="Enki photo manager library"
HOMEPAGE="http://watchwolf.fr/wiki/doku.php?id=enki"

IUSE=""

DEPEND=">=dev-libs/eet-9999
	>=x11-libs/ecore-9999
	>=media-libs/edje-9999
	>=media-libs/ethumb-9999
	>=media-libs/libexif-0.6.16
	>=dev-libs/exml-0.1.1
	>=media-libs/libiptcdata-1.0.2"

RDEPEND="${DEPEND}"

src_unpack() {
	git_src_unpack
}

src_prepare() {
	cd "${S}/${PN}"
	enlightenment_src_prepare
}

src_configure() {
	cd "${S}/${PN}"
	enlightenment_src_configure
}

src_compile() {
	cd "${S}/${PN}"
	enlightenment_src_compile
}

src_install() {
	cd "${S}/${PN}"
	enlightenment_src_install
}
