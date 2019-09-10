# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PYTHON="yes"
EFL_USE_GIT="yes"
EFL_GIT_BASE_PATH="https://github.com"
EFL_GIT_REPO_CATEGORY="JeffHoogland"
EFL_GIT_REPO_NAME="${PN^^p}"

inherit efl

DESCRIPTION="A simple text editor written in Python and EFL"
IUSE=""

LICENSE="BSD-3"

RDEPEND="
	dev-python/python-efl
	dev-python/python-elm-extensions
"
DEPEND="${RDEPEND}"

src_compile() { :; }

src_install() {
	dobin "${PN}"
	doman "${PN}".1

	domenu "${PN^^p}".desktop

	python_replicate_script "${ED}"/usr/bin/"${PN}"
}
