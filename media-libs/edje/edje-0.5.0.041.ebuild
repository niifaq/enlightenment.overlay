# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/edje/edje-9999.ebuild,v 1.6 2006/07/16 05:29:42 vapier Exp $

inherit enlightenment

SRC_URI="http://download.enlightenment.org/snapshots/2007-08-26/${P}.tar.gz"

DESCRIPTION="graphical layout and animation library"
HOMEPAGE="http://www.enlightenment.org/pages/edje.html"

IUSE="vim"

DEPEND=">=x11-libs/evas-0.9.9.041
	>=x11-libs/ecore-0.9.9.041
	>=dev-libs/eet-0.9.10.041
	>=dev-libs/embryo-0.9.1.041
	vim? ( app-editors/vim-core )"

src_compile() {
	export MY_ECONF="
		$(use_with vim vim /usr/share/vim)
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
