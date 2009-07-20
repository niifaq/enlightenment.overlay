# Copyright 1999-2009 Gentoo Foundation
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
IUSE=""

RDEPEND="dev-python/dbus-python
	dev-python/pygobject
	dev-python/pydispatcher
	>=sys-apps/dbus-9999
	>=dev-libs/eet-9999
	>=dev-libs/eina-9999
	>=x11-libs/evas-9999
	>=x11-libs/ecore-9999
	>=dev-libs/embryo-9999
	>=media-libs/edje-9999
	>=media-libs/epsilon-9999
	>=x11-libs/etk-9999
	>=x11-libs/e_dbus-9999
	>=dev-python/python-evas-9999
	>=dev-python/python-ecore-9999
	>=dev-python/python-edje-9999
	>=dev-python/python-epsilon-9999
	>=dev-python/python-etk-9999
	>=dev-python/python-e_dbus-9999
	>=dev-python/python-efl_utils-9999
	>=media-libs/lightmediascanner-9999
	>=dev-python/python-lightmediascanner-9999
	>=app-misc/canolad-9999
	>=media-libs/atabake-9999
	>=net-misc/python-downloadmanager-9999
	>=dev-python/terra-9999
	>=media-libs/canola-thumbnailer-9999
	"

DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

src_unpack() {
	git_src_unpack
	cd "${S}"
}

src_compile() {
setup.sh --help
}

src_install() {
setup.sh install
}
