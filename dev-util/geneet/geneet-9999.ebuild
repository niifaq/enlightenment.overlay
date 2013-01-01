# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

E_PYTHON="1"
inherit efl distutils

DESCRIPTION="C boilerplate generator for EET datastructures"
HOMEPAGE="http://git.profusion.mobi/~leandro/geneet.html"

IUSE="examples"

DEPEND="virtual/pyparsing"
RDEPEND="${DEPEND}"

src_install() {
	distutils_src_install

	if use examples; then
		insinto /usr/share/doc/${PF}
		doins *.geneet
		doins test-phonebook.c
	fi
}
