# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2


EAPI="5"

inherit efl cmake-utils flag-o-matic

DESCRIPTION="Open source web browser engine (EFL version)"
HOMEPAGE="http://trac.webkit.org/wiki/EFLWebKit"
MY_PV="${PV/0.1.}"
SRC_URI="http://download.enlightenment.org/rel/libs/${PN}/${PN}-159807.tar.xz"
E_STATE="snap"
WANT_AUTOTOOLS="no"

LICENSE="LGPL-2 LGPL-2.1 BSD"
IUSE="curl battery debug geolocation glib gstreamer html5 nsplugin soup sqlite svg xslt"
SLOT=2
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
	!curl? ( >=net-libs/libsoup-2.42 )
	sqlite? ( >=dev-db/sqlite-3 )
	dev-libs/efl[fontconfig,glib?]
	|| ( dev-libs/efl[X] dev-libs/efl[xcb] )
	gstreamer? (
			>=media-libs/gstreamer-1.0.5:1.0
			>=media-libs/gst-plugins-base-1.0.5:1.0
			dev-libs/glib
		)
	battery? ( dev-libs/e_dbus )
	dev-libs/icu
"
DEPEND="${RDEPEND}
	>=sys-devel/flex-2.5.33
	sys-devel/bison
	sys-devel/gettext
	dev-util/gperf
	virtual/pkgconfig
"
REQUIRED_USE="	gstreamer? ( glib )
		glib? ( soup )
		^^ ( curl soup )"

S="${WORKDIR}/${PN}/"

src_prepare() {
	epatch "$FILESDIR"/freetype_headers.patch
}

src_configure() {
	[[ gcc-major-version == 4 ]] && [[ gcc-minor-version == 4 ]] && append-flags -fno-strict-aliasing
	append-flags -Wno-deprecated-declarations

	local mycmakeargs="
		-DPORT=Efl
		-DENABLE_JAVASCRIPT_DEBUGGER=On
		-DENABLE_ACCESSIBILITY=Off
		-DENABLE_API_TESTS=Off
		$(cmake-utils_use_enable glib GLIB_SUPPORT)
		$(cmake-utils_use_enable nsplugin NETSCAPE_PLUGIN_API)
		$(cmake-utils_use_enable sqlite SQL_DATABASE)
		$(cmake-utils_use_enable sqlite ICONDATABASE)
		$(cmake-utils_use_enable sqlite DOM_STORAGE)
		$(cmake-utils_use_enable svg SVG)
		$(cmake-utils_use_enable svg SVG_FONTS)
		$(cmake-utils_use_enable xslt XSLT)
		$(cmake-utils_use_enable gstreamer VIDEO)
		$(cmake-utils_use_enable geolocation GEOLOCATION)
		$(cmake-utils_use_enable battery BATTERY_STATUS )
		$(cmake-utils_use_enable html5 DATAGRID)
		$(cmake-utils_use_enable html5 FULLSCREEN_API)
		$(cmake-utils_use_enable html5 NOTIFICATIONS)
		$(cmake-utils_use_enable html5 ORIENTATION_EVENTS)
		$(cmake-utils_use_enable html5 )
		"

	use glib &&						\
		mycmakeargs+=" -DNETWORK_BACKEND=soup" ||	\
		mycmakeargs+=" -DNETWORK_BACKEND=curl"

		cmake-utils_src_configure
}


#ENABLE_3D_RENDERING ......................... ON
#ENABLE_ACCELERATED_2D_CANVAS                  OFF
#ENABLE_ACCESSIBILITY ........................ OFF
#ENABLE_ASSEMBLER_WX_EXCLUSIVE ............... OFF
#ENABLE_BATTERY_STATUS                         Off
#ENABLE_BLOB ................................. ON
#ENABLE_CANVAS_PATH                            ON
#ENABLE_CANVAS_PROXY ......................... OFF
#ENABLE_CHANNEL_MESSAGING                      ON
#ENABLE_CONTEXT_MENUS ........................ ON
#ENABLE_CSP_NEXT                               OFF
#ENABLE_CSS3_CONDITIONAL_RULES ............... OFF
#ENABLE_CSS3_TEXT                              ON
#ENABLE_CSS3_TEXT_LINE_BREAK ................. OFF
#ENABLE_CSS_BOX_DECORATION_BREAK               ON
#ENABLE_CSS_COMPOSITING ...................... OFF
#ENABLE_CSS_DEVICE_ADAPTATION                  ON
#ENABLE_CSS_EXCLUSIONS ....................... OFF
#ENABLE_CSS_FILTERS                            OFF
#ENABLE_CSS_IMAGE_ORIENTATION ................ OFF
#ENABLE_CSS_IMAGE_RESOLUTION                   OFF
#ENABLE_CSS_IMAGE_SET ........................ ON
#ENABLE_CSS_REGIONS                            ON
#ENABLE_CSS_SHADERS .......................... OFF
#ENABLE_CSS_SHAPES                             OFF
#ENABLE_CSS_STICKY_POSITION .................. ON
#ENABLE_CSS_TRANSFORMS_ANIMATIONS_UNPREFIXED   ON
#ENABLE_CSS_VARIABLES ........................ ON
#ENABLE_CUSTOM_SCHEME_HANDLER                  ON
#ENABLE_DATALIST_ELEMENT ..................... ON
#ENABLE_DATA_TRANSFER_ITEMS                    OFF
#ENABLE_DETAILS_ELEMENT ...................... ON
#ENABLE_DEVICE_ORIENTATION                     OFF
#ENABLE_DIRECTORY_UPLOAD ..................... OFF
#ENABLE_DOM4_EVENTS_CONSTRUCTOR                ON
#ENABLE_DOWNLOAD_ATTRIBUTE ................... ON
#ENABLE_DRAG_SUPPORT                           ON
#ENABLE_FAST_MOBILE_SCROLLING ................ ON
#ENABLE_FILTERS                                ON
#ENABLE_FONT_LOAD_EVENTS ..................... OFF
#ENABLE_FTPDIR                                 ON
#ENABLE_FULLSCREEN_API ....................... ON
#ENABLE_GAMEPAD                                ON
#ENABLE_GEOLOCATION .......................... OFF
#ENABLE_HIDDEN_PAGE_DOM_TIMER_THROTTLING       OFF
#ENABLE_HIGH_DPI_CANVAS ...................... OFF
#ENABLE_ICONDATABASE                           ON
#ENABLE_IFRAME_SEAMLESS ...................... ON
#ENABLE_IMAGE_DECODER_DOWN_SAMPLING            OFF
#ENABLE_INDEXED_DATABASE ..................... ON
#ENABLE_INPUT_SPEECH                           OFF
#ENABLE_INPUT_TYPE_COLOR ..................... ON
#ENABLE_INPUT_TYPE_DATE                        OFF
#ENABLE_INPUT_TYPE_DATETIME_INCOMPLETE ....... OFF
#ENABLE_INPUT_TYPE_DATETIMELOCAL               OFF
#ENABLE_INPUT_TYPE_MONTH ..................... OFF
#ENABLE_INPUT_TYPE_TIME                        OFF
#ENABLE_INPUT_TYPE_WEEK ...................... OFF
#ENABLE_INSPECTOR                              ON
#ENABLE_JAVASCRIPT_DEBUGGER .................. ON
#ENABLE_JIT                                    ON
#ENABLE_LEGACY_NOTIFICATIONS ................. OFF
#ENABLE_LEGACY_VIEWPORT_ADAPTION               OFF
#ENABLE_LEGACY_VENDOR_PREFIXES ............... ON
#ENABLE_LEGACY_WEB_AUDIO                       ON
#ENABLE_LINK_PREFETCH ........................ ON
#ENABLE_LLINT                                  ON
#ENABLE_MATHML ............................... ON
#ENABLE_MEDIA_CAPTURE                          ON
#ENABLE_MEDIA_SOURCE ......................... OFF
#ENABLE_MEDIA_STATISTICS                       OFF
#ENABLE_MEDIA_STREAM ......................... OFF
#ENABLE_MEMORY_SAMPLER                         ON
#ENABLE_METER_ELEMENT ........................ ON
#ENABLE_MHTML                                  ON
#ENABLE_MOUSE_CURSOR_SCALE ................... ON
#ENABLE_NAVIGATOR_CONTENT_UTILS                ON
#ENABLE_NOSNIFF .............................. OFF
#ENABLE_NETSCAPE_PLUGIN_API                    ON
#ENABLE_NETWORK_INFO ......................... ON
#ENABLE_NETWORK_PROCESS                        OFF
#ENABLE_NOTIFICATIONS ........................ OFF
#ENABLE_ORIENTATION_EVENTS                     OFF
#ENABLE_PAGE_VISIBILITY_API .................. ON
#ENABLE_PERFORMANCE_TIMELINE                   OFF
#ENABLE_PROMISES ............................. ON
#ENABLE_PROGRESS_ELEMENT                       ON
#ENABLE_PLUGIN_PROXY_FOR_VIDEO ............... OFF
#ENABLE_PROXIMITY_EVENTS                       OFF
#ENABLE_QUOTA ................................ OFF
#ENABLE_REPAINT_THROTTLING                     OFF
#ENABLE_REQUEST_ANIMATION_FRAME .............. ON
#ENABLE_RESOLUTION_MEDIA_QUERY                 ON
#ENABLE_RESOURCE_TIMING ...................... OFF
#ENABLE_SCRIPTED_SPEECH                        OFF
#ENABLE_SECCOMP_FILTERS ...................... OFF
#ENABLE_SHARED_WORKERS                         ON
#ENABLE_SPELLCHECK ........................... ON
#ENABLE_SQL_DATABASE                           ON
#ENABLE_SVG .................................. ON
#ENABLE_SVG_FONTS                              ON
#ENABLE_TEMPLATE_ELEMENT ..................... ON
#ENABLE_TEXT_AUTOSIZING                        OFF
#ENABLE_THREADED_HTML_PARSER, ................ OFF
#ENABLE_TOUCH_EVENTS                           ON
#ENABLE_TOUCH_SLIDER ......................... OFF
#ENABLE_TOUCH_ICON_LOADING                     OFF
#ENABLE_USERSELECT_ALL ....................... ON
#ENABLE_USER_TIMING                            OFF
#ENABLE_VIBRATION ............................ ON
#ENABLE_VIDEO                                  Off
#ENABLE_VIDEO_TRACK .......................... Off
#ENABLE_VIEW_MODE_CSS_MEDIA                    ON
#ENABLE_WEB_AUDIO ............................ Off
#ENABLE_WEB_SOCKETS                            ON
#ENABLE_WEB_TIMING ........................... ON
#ENABLE_WEBGL                                  ON
#ENABLE_XHR_TIMEOUT .......................... ON
#ENABLE_XSLT                                   ON
#USE_SYSTEM_MALLOC ........................... OFF
#WTF_USE_TILED_BACKING_STORE                   ON
