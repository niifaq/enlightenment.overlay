# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
E_PYTHON="yes"
EFL_USE_GIT="yes"
EFL_GIT_BASE_PATH="https://github.com"
EFL_GIT_REPO_CATEGORY="JeffHoogland"

inherit efl

DESCRIPTION="Contains a few more complex elementary objects for easy importing/usage."
HOMEPAGE="https://www.enlightenment.org"
EGIT_REPO_URI="https://github.com/JeffHoogland/python-elm-extensions"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE=""

RDEPEND="
	dev-python/python-efl
"

src_compile() { :; }

src_install() {
	python_foreach_impl python_domodule elmextensions
}
