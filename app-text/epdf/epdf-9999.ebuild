# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-editors/enscribe/enscribe-9999.ebuild,v 1.1 2005/09/07 03:55:40 vapier Exp $

EVCS_MODULE="PROTO/${PN}"
inherit enlightenment

DESCRIPTION="PDF viewer with widgets for EWL, ETK, and Evas"

IUSE=""

DEPEND=">=app-text/poppler-0.5.9
	>=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=x11-libs/ewl-0.5
	>=x11-libs/etk-0.1
	>=media-libs/imlib2-1.4
	>=media-libs/epsilon-0.3"
