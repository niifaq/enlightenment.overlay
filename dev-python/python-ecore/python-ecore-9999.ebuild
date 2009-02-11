# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SUB_PROJECT="BINDINGS/python"
inherit enlightenment python

DESCRIPTION="Python bindings for ecore"

IUSE=""

DEPEND=">=dev-lang/python-2.4
	>=dev-python/setuptools-0.6_rc3
	>=dev-python/python-evas-9999
	>=dev-python/cython-0.9.8
	>=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=media-libs/edje-9999"
