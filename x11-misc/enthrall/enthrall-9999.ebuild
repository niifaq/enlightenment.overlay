# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
E_OLD_PROJECT="yes"
ESVN_SUB_PROJECT="MISC"

inherit efl

DESCRIPTION="Enthrall - screen capture application, built on Ecore and Imlib2"

IUSE=""

DEPEND="media-video/ffmpeg
	>=dev-libs/ecore-9999
	>=media-libs/imlib2-9999"

RDEPEND="${DEPEND}"
