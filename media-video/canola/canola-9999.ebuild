# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

NEED_PYTHON="2.5"
EGIT_REPO_URI="git://code.openbossa.org/${PN}/mainline.git"
inherit git python distutils

DESCRIPTION="Media Engine Framework to help media applications playing contents"
HOMEPAGE="http://code.openbossa.org/projects/canola/repos/mainline"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-python/dbus-python
	dev-python/pygobject
	dev-python/python-dispatcher
	dev-python/feedparser
	sys-apps/dbus
	>=dev-libs/eet-9999
	>=dev-libs/eina-9999
	>=media-libs/evas-9999
	>=dev-libs/ecore-9999
	>=dev-libs/embryo-9999
	>=media-libs/edje-9999
	>=media-libs/epsilon-9999
	>=x11-libs/etk-9999
	>=dev-libs/e_dbus-9999
	>=dev-python/python-evas-9999
	>=dev-python/python-ecore-9999
	>=dev-python/python-edje-9999
	>=dev-python/python-epsilon-9999
	>=dev-python/python-etk-9999
	>=dev-python/python-e_dbus-9999
	>=dev-python/python-efl_utils-9999
	>=media-libs/lightmediascanner-9999
	>=dev-python/python-lightmediascanner-9999
	>=app-misc/canola-daemon-9999
	>=media-libs/atabake-9999
	>=net-misc/python-downloadmanager-9999
	>=dev-python/terra-9999
	>=media-libs/canola-thumbnailer-9999
"

DEPEND=">=dev-python/setuptools-0.6_rc9
	${RDEPEND}"

src_unpack() {
	git_src_unpack
	cd "${S}"
}

src_prepare() {
	epatch "${FILESDIR}/${PN}_disable_NM.patch" || die
}

src_compile() {
	./setup.sh \
		--prefix=/usr \
		--sysconfdir=/etc \
		compile || die "compile failed"
}

src_install() {
	DESTDIR="${D}" \
	./setup.sh \
		--prefix=/usr \
		--sysconfdir=/etc \
		install || die "install failed"
}

pkg_postinst() {
	local temp=$(mktemp -d);
	local wrapper="/usr/bin/cnl-wrapper"

	einfo "Creating system-wide plugins database"

	"${wrapper}" rescan-collections

	einfo "Replacing 'Maemo System' plug-in with 'Linux System'"

	env HOME="${temp}" "${wrapper}" get-prefs 'asd' &> /dev/null
	env HOME="${temp}" "${wrapper}" disable-plugin 'Maemo System'
	env HOME="${temp}" "${wrapper}" enable-plugin 'Linux System'

	cp -f "${temp}"/.canola/plugins.pickle /usr/share/${PN}/plugins.pickle
}
