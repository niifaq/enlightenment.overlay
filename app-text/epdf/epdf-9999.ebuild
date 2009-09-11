# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="PROTO"
inherit enlightenment

DESCRIPTION="PDF viewer with widgets for EWL, ETK, and Evas"

IUSE=""

DEPEND="|| ( >=dev-libs/poppler-glib-0.10.6[cairo] >=app-text/poppler-bindings-0.10.4[cairo] )
		>=x11-libs/evas-0.9.9
		>=x11-libs/ecore-0.9.9
		>=x11-libs/ewl-0.5
		>=x11-libs/etk-0.1
		>=media-libs/imlib2-1.4
		>=media-libs/epsilon-0.3"

RDEPEND="${DEPEND}"
