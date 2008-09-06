# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-libs/esmart/esmart-9999.ebuild,v 1.8 2006/09/24 12:22:05 vapier Exp $

inherit enlightenment

SRC_URI="http://download.enlightenment.org/snapshots/2007-08-26/${P}.tar.gz"

DESCRIPTION="A collection of evas smart objects"

DEPEND="sys-devel/libtool
	>=x11-libs/evas-0.9.9.041
	>=x11-libs/ecore-0.9.9.041
	>=media-libs/edje-0.5.0.041
	>=media-libs/epsilon-0.3.0.011
	>=media-libs/imlib2-1.4.0.003"
