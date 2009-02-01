# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-terms/enterminus/enterminus-9999.ebuild,v 1.1 2005/09/07 03:52:46 vapier Exp $

EVCS_MODULE="PROTO/${PN}"
inherit enlightenment

DESCRIPTION="An EFL Based Terminal"

IUSE=""

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/imlib2
	net-misc/curl"
