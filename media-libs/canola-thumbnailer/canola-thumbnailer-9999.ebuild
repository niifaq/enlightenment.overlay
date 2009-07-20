# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EGIT_REPO_URI="git://code.openbossa.org/${PN}/mainline.git"
inherit git autotools

DESCRIPTION="Canola thumbnail generator"
HOMEPAGE="http://code.openbossa.org/projects/${PN}/repos/mainline"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=media-libs/epsilon-9999
	"
DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

src_unpack() {
	git_src_unpack

	cd "${S}"

	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
}
