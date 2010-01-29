# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON="2.5"
EGIT_REPO_URI="git://code.openbossa.org/${PN}/mainline.git"
inherit git python distutils

DESCRIPTION="Media Engine Framework to help media applications playing contents"
HOMEPAGE="http://code.openbossa.org/projects/${PN}/repos/mainline"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="gstreamer mplayer"

RDEPEND="dev-python/dbus-python
	dev-python/pygobject
	sys-apps/dbus
	gstreamer? ( media-libs/gstreamer )
	mplayer? ( media-video/mplayer )"

DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

src_unpack() {
	git_src_unpack
}
