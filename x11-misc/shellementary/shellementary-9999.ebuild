# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="4"

E_PKG_IUSE="nls"

ESVN_SUB_PROJECT="PROTO"
inherit efl

DESCRIPTION="Tool to display Elementary dialogs from the command line and shell scripts"

IUSE=""

RDEPEND="
	>=dev-python/cython-0.9.8
	>=dev-libs/efl-9999
	>=dev-python/python-efl-9999
"

DEPEND="${RDEPEND}"

src_unpack() {
	AT_M4DIR="-I m4"
	efl_src_unpack
}
