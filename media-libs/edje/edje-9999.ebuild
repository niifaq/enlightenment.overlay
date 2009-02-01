# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="graphical layout and animation library"
HOMEPAGE="http://www.enlightenment.org/pages/edje.html"

IUSE="vim-syntax"

DEPEND=">=x11-libs/evas-9999
	>=x11-libs/ecore-9999
	>=dev-libs/eet-9999
	>=dev-libs/embryo-9999
	>=dev-libs/eina-9999
	vim-syntax? ( app-editors/vim-core )
"

src_compile() {
	export MY_ECONF="
		$(use_with vim-syntax vim /usr/share/vim)
	"
	enlightenment_src_compile
}

src_install() {
	if use vim ; then
		insinto /usr/share/vim/vimfiles/syntax/
		doins data/edc.vim edc.vim
	fi
	enlightenment_src_install
}
