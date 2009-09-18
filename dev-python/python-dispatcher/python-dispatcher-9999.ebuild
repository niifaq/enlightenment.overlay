# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON="2.5"
EGIT_REPO_URI="git://git.profusion.mobi/users/ulisses/python-dispatcher.git"
inherit git python distutils

DESCRIPTION="Python utilities to work with threads"
HOMEPAGE=""

LICENSE="python-dispatcher"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

src_unpack() {
	git_src_unpack
}
