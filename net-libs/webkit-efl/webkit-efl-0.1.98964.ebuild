# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit cmake-utils flag-o-matic enlightenment

DESCRIPTION="Open source web browser engine (EFL version)"
HOMEPAGE="http://trac.webkit.org/wiki/EFLWebKit"
MY_PV="${PV/0.1.}"
SRC_URI="http://packages.profusion.mobi/webkit-efl/${PN}-svn-r${MY_PV}.tar.bz2"
E_STATE="snap"
WANT_AUTOTOOLS="no"

LICENSE="LGPL-2 LGPL-2.1 BSD"
IUSE="curl debug glib gstreamer html5 nsplugin soup sqlite svg xslt"

KEYWORDS="~amd64 ~x86"

RDEPEND="
	xslt? ( dev-libs/libxslt )
	virtual/jpeg:0
	media-libs/libpng
	x11-libs/cairo
	glib? (
			dev-libs/glib
			net-libs/libsoup
		)
	!glib? ( net-misc/curl )
	!curl? ( net-libs/libsoup )
	sqlite? ( >=dev-db/sqlite-3 )
	media-libs/edje
	media-libs/evas[fontconfig]
	dev-libs/ecore[X,glib?]
	gstreamer? (
			media-libs/gstreamer:0.10
			>=media-libs/gst-plugins-base-0.10.25:0.10
			dev-libs/glib
		)
	dev-libs/icu
	dev-libs/eina
"
DEPEND="${RDEPEND}
	>=sys-devel/flex-2.5.33
	sys-devel/bison
	sys-devel/gettext
	dev-util/gperf
	dev-util/pkgconfig
"
REQUIRED_USE="	gstreamer? ( glib )
		glib? ( soup )
		^^ ( curl soup )"

CMAKE_IN_SOURCE_BUILD="enable"
S="${WORKDIR}/${PN}-svn-r${MY_PV}/Source"

src_configure() {
	[[ gcc-major-version == 4 ]] && [[ gcc-minor-version == 4 ]] && append-flags -fno-strict-aliasing

	local mycmakeargs="
		-DPORT=Efl
		-ENABLE_JAVASCRIPT_DEBUGGER=ON
		$(cmake-utils_use_enable glib GLIB_SUPPORT)
		$(cmake-utils_use_enable nsplugin NETSCAPE_PLUGIN_API)
		$(cmake-utils_use_enable sqlite SQL_DATABASE)
		$(cmake-utils_use_enable sqlite ICONDATABASE)
		$(cmake-utils_use_enable sqlite DOM_STORAGE)
		$(cmake-utils_use_enable svg SVG)
		$(cmake-utils_use_enable svg SVG_FONTS)
		$(cmake-utils_use_enable xslt XSLT)
		$(cmake-utils_use_enable gstreamer VIDEO)
		$(cmake-utils_use_enable html5 GEOLOCATION)
		$(cmake-utils_use_enable html5 DATAGRID)
		$(cmake-utils_use_enable html5 FULLSCREEN_API)
		$(cmake-utils_use_enable html5 NOTIFICATIONS)
		$(cmake-utils_use_enable html5 ORIENTATION_EVENTS)
		$(cmake-utils_use_enable html5 )
		"

	use glib &&						\
		mycmakeargs+=" -DNETWORK_BACKEND=soup" ||	\
		mycmakeargs+=" -DNETWORK_BACKEND=curl"

#	ENABLE_BLOB .................. OFF
#	ENABLE_CHANNEL_MESSAGING       ON
#	ENABLE_DATALIST .............. ON
#	ENABLE_DATA_TRANSFER_ITEMS     OFF
#	ENABLE_FAST_MALLOC ........... ON
#	ENABLE_FAST_MOBILE_SCROLLING   ON
#	ENABLE_FILTERS ............... ON
#	ENABLE_FTPDIR                  ON
#	ENABLE_INSPECTOR ............. ON
#	ENABLE_JIT ................... ON
#	ENABLE_MATHML                  ON
#	ENABLE_METER_TAG ............. ON
#	ENABLE_PROGRESS_TAG .......... ON
#	ENABLE_SHARED_WORKERS          ON
#	ENABLE_TOUCH_EVENTS .......... OFF
#	ENABLE_TOUCH_ICON_LOADING      OFF
#	ENABLE_WEB_SOCKETS             ON
#	ENABLE_WORKERS ............... ON
#	ENABLE_XHTMLMP                 OFF
#	ENABLE_XPATH ................. ON
#	ENABLE_DFG_JIT ............... OFF

		cmake-utils_src_configure
}