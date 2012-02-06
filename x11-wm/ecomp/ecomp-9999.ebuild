# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_EXTERNAL="yes"
inherit git-2 efl flag-o-matic

EGIT_REPO_URI="git://github.com/jeffdameth/${PN}.git"

DESCRIPTION="Patched compiz for use into enlightenment with ecomorph"
HOMEPAGE="http://code.google.com/p/itask-module/wiki/Stuff"

IUSE="inotify jpeg max-desktops"

# Most of depends taken from homepage. 
# librsvg and libpng are commented into configure.ac
# cairo used for wall plugin, but as automagic.
DEPEND="
	=x11-wm/enlightenment-9999
	=dev-libs/eina-9999
	=dev-libs/eet-9999
	x11-libs/libXcomposite
	x11-libs/libXdamage
	x11-libs/libXrandr
	x11-libs/libXinerama
	x11-libs/libICE
	x11-libs/pango
	dev-libs/libxslt
	dev-libs/libxml2
	virtual/opengl
	media-libs/mesa
	jpeg? ( virtual/jpeg )"

RDEPEND="${DEPEND}"

src_unpack() {
	git-2_src_unpack

	cd "${S}"
}

src_configure() {
	export MY_ECONF="
		$(use_enable inotify)
		$(use_enable jpeg)
		$(use_with max-desktops)
	"

	efl_src_configure
}
