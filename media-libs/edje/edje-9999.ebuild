# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc"
inherit efl elisp-common

DESCRIPTION="graphical layout and animation library"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/Edje"

IUSE="debug emacs experimental +physics vim-syntax"

RDEPEND="
	dev-lang/lua
	!dev-libs/efl
	physics? ( >=dev-libs/ephysics-9999 )
	emacs? ( virtual/emacs )"

DEPEND="${RDEPEND}"

SITEFILE=50${PN}-gentoo.el

src_configure() {
	# TODO: detect FPU-less architectures and use --enable-fixed-point
	export MY_ECONF="
	  ${MY_ECONF}
	  $(use_enable !debug amalgamation)
	  $(use_enable experimental edje-program-cache)
	  $(use_enable experimental edje-calc-cache)
	  $(use_with vim-syntax vim /usr/share/vim)
	  $(use_enable physics ephysics)
	  $(use_enable eio eio)
	"
	efl_src_configure
}

src_install() {
	if use vim-syntax ; then
		insinto /usr/share/vim/vimfiles/syntax/
		doins data/edc.vim edc.vim
	fi

	if use emacs; then
		elisp-compile data/edje-mode.el
		elisp-install ${PN} data/edje-mode.el
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi

	efl_src_install
	dodoc utils/gimp-edje-export.py
	dodoc utils/inkscape2edc
}

pkg_postinst() {
	use emacs && elisp-site-regen
	efl_pkg_postinst
}

pkg_postinst() {
	use emacs && elisp-site-regen
}
