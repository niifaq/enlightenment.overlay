# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="Python Enlightenment Foundation Libraries (EFL) metapackage"

IUSE=""

DEPEND=">=dev-python/python-ecore-9999
	>=dev-python/python-evas-9999
	>=dev-python/python-e_dbus-9999
	>=dev-python/python-edje-9999
	>=dev-python/python-efl_utils-9999
	>=dev-python/python-elementary-9999
	>=dev-python/python-ethumb-9999
	>=dev-python/python-emotion-9999
	>=dev-python/python-epsilon-9999
	>=dev-python/python-etk-9999"

RDEPEND="${DEPEND}"

src_unpack() { :; }
src_compile() { :; }
src_install() { :; }
