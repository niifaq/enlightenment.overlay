# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

E_PYTHON="1"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="tools"
inherit efl distutils-r1

DESCRIPTION="Generator for EFL's pickler/unpickler library, EET"
HOMEPAGE="http://git.profusion.mobi/~leandro/geneet.html"

IUSE="examples"

DEPEND="dev-python/pyparsing"
RDEPEND="${DEPEND}"

src_install() {
	distutils-r1_src_install

	if use examples; then
		insinto /usr/share/doc/${PF}
		doins *.geneet
		doins test-phonebook.c
	fi
}
