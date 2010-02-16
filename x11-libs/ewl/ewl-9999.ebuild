# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit enlightenment

DESCRIPTION="simple-to-use general purpose widget library"

IUSE="X fbcon opengl"

RDEPEND=">=media-libs/edje-9999
	>=media-libs/evas-9999[png]
	>=dev-libs/ecore-9999[fbcon?,opengl?,X?]
	>=media-libs/epsilon-9999
	>=media-libs/emotion-9999
	>=dev-libs/efreet-9999"
DEPEND="${RDEPEND}
	doc? ( virtual/tetex )"

src_compile() {
	export MY_ECONF="
		--enable-buffer
		$(use_enable X software-x11)
		$(use_enable X software-16-x11)
		$(use_enable X xrender-x11)
		$(use_enable opengl opengl-x11)
		$(use_enable fbcon)
	"
	enlightenment_src_compile
}
