# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="MISC"

inherit enlightenment

DESCRIPTION="Enthrall - screen capture application, built on Ecore and Imlib2"

IUSE=""

DEPEND=">=media-video/ffmpeg-9999
	>=x11-libs/ecore-9999
	>=media-libs/imlib2-9999"

RDEPEND="${DEPEND}"

