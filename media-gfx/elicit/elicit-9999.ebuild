# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

EGIT_REPO_URI="git://github.com/rephorm/elicit.git"
inherit git enlightenment

DESCRIPTION="tool for examining images on your desktop"
HOMEPAGE="http://enlightenment.org/pages/elicit.html"

IUSE=""

DEPEND=">=media-libs/evas-0.9.9
	>=dev-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0
	>=x11-libs/esmart-0.0.3
	>=media-libs/imlib2-1.2.0"

RDEPEND="${DEPEND}"

src_unpack() {
	git_src_unpack

	cd "${S}"

	eautoreconf
}
