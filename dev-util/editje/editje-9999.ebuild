# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON="2.5"
inherit python enlightenment

DESCRIPTION="Editje a nice tool to graphically edit edje files"

LICENSE="GPL-3"
IUSE=""

DEPEND=">=dev-libs/eina-9999
	>=dev-libs/eet-9999
	>=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=dev-libs/embryo-9999
	>=media-libs/edje-9999
	>=x11-libs/elementary-9999
	>=dev-python/python-evas-9999
	>=dev-python/python-edje-9999
	>=dev-python/python-elementary-9999
	"

RDEPEND="${DEPEND}"
