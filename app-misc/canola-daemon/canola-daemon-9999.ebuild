# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

NEED_PYTHON="2.5"
EGIT_REPO_URI="git://code.openbossa.org/canola-daemon/mainline.git"
inherit git python distutils

DESCRIPTION="Canola Daemon is responsible for watching selected folders for new media files"
HOMEPAGE="http://code.openbossa.org/projects/canola-daemon/pages/Home"
LICENSE="GPL-2"

SLOT="0"
IUSE=""

RDEPEND="dev-python/dbus-python
	>=dev-python/pyinotify-0.7.1
	>=dev-python/python-ecore-9999
	>=media-libs/lightmediascanner-9999
	>=dev-python/python-lightmediascanner-9999
	"

DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

src_unpack() {
	git_src_unpack
}

#src_compile() {
#	 distutils_src_compile
#}

#src_install() {
#	distutils_src_install
#}
