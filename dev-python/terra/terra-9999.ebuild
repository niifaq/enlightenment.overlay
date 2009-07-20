# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON="2.4"
EGIT_REPO_URI="git://code.openbossa.org/python-terra/mainline.git"
inherit git python distutils

DESCRIPTION="Framework to build Canola-like applications"
HOMEPAGE="http://code.openbossa.org/projects/python-terra/repos/mainline"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-python/pydispatcher
	>=dev-python/python-evas-9999
	>=dev-python/python-ecore-9999
	>=dev-python/python-edje-9999
	>=dev-python/python-etk-9999
	"
DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

src_unpack() {
	git_src_unpack
}
