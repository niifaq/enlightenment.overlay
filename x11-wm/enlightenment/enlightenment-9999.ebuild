# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
ESVN_URI_APPEND="e"
inherit efl

DESCRIPTION="Enlightenment DR17 window manager"
HOMEPAGE="http://www.enlightenment.org/"

SLOT="0.17"
IUSE="exchange pam alsa tracker pm-utils debug xinerama xscreensaver opengl
		bluetooth +hal udev"

IUSE_ENLIGHTENMENT_MODULES="
	battery
	clock
	comp
	conf
	connman
	cpufreq
	dropshadow
	everything
	fileman
	ibar
	ibox
	illume2
	illume
	ofono
	pager
	start
	syscon
	systray
	temperature
	winlist
	wizard"

IUSE_ENLIGHTENMENT_CONF="
	borders
	colors
	desklock
	desk
	desks
	dialogs
	display
	dpms
	engine
	fonts
	imc
	intl
	menus
	mime
	mouse
	paths
	profiles
	scale
	shelves
	startup
	theme
	winlist"

IUSE_ENLIGHTENMENT_EVERYTHING="
	files
	apps
	calc
	aspell
	settings
	windows"

for module in ${IUSE_ENLIGHTENMENT_MODULES}; do
	IUSE="${IUSE} +enlightenment_modules_${module}"
done

for module in ${IUSE_ENLIGHTENMENT_CONF}; do
	IUSE="${IUSE} +enlightenment_conf_${module}"
done

for plugin in ${IUSE_ENLIGHTENMENT_EVERYTHING}; do
	IUSE="${IUSE} +enlightenment_everything_${plugin}"
done

# TODO: pm-utils changes /etc/enlightenment/sysactions.conf
# TODO: patch to not require -i-really-know-what-i-am-doing-and-accept-full-responsibility-for-it
# TODO: patch to make e17 "e_alert()" inform how to compile with debug in gentoo
RDEPEND="
	exchange? ( >=net-libs/exchange-9999 )
	pam? ( sys-libs/pam )
	alsa? ( media-libs/alsa-lib )
	tracker? ( app-misc/tracker )
	pm-utils? ( sys-power/pm-utils )
	>=dev-libs/eet-9999
	>=dev-libs/efreet-9999
	>=dev-libs/eina-9999[safety-checks]
	>=dev-libs/embryo-9999
	>=dev-libs/ecore-9999[X,evas,opengl?,xinerama?,xscreensaver?,inotify,xim]
	>=dev-libs/e_dbus-9999[hal,connman?]
	>=media-libs/edje-9999
	>=media-libs/evas-9999[X,opengl?,eet,jpeg,png,safety-checks]
	udev? ( dev-libs/eeze )
	everything-aspell? ( app-text/aspell )
	everything-calc? ( sys-devel/bc )
"
DEPEND="${RDEPEND}"

pkg_setup() {
	local x= prefix=IUSE_ENLIGHTENMENT

	if !use everything; then
		for x in ${IUSE_ENLIGHTENMENT_EVERYTHING}; do
			use enlightenment_modules_${x} \
				&& die "${prefix}_EVERYTHING=${x} requires ${prefix}_MODULES=everything"
		done
	fi
	if !use conf; then
		for x in ${IUSE_ENLIGHTENMENT_CONF}; do
			use enlightnement_conf_${x} \
				&& die "${prefix}_CONF=${x} requires ${prefix}_MODULES=conf"
		done
	fi
}

src_configure() {
	# NOTE: mixer is plugin-able, but just alsa is provided atm.
	export MY_ECONF="
	  ${MY_ECONF}
	  --disable-install-sysactions
	  $(use_enable hal device-hal)
	  $(use_enable udev device-udev)
	  $(use_enable pam)
	  $(use_enable alsa mixer)
	  $(use_enable exchange)
	  $(use_enable bluetooth bluez)
	  $(use_enable battery)
	  $(use_enable clock)
	  $(use_enable comp)
	  $(use_enable conf)
	  $(use_enable enlightenment_conf_borders)
	  $(use_enable enlightenment_conf_colors)
	  $(use_enable enlightenment_conf_desklock)
	  $(use_enable enlightenment_conf_desk)
	  $(use_enable enlightenment_conf_desks)
	  $(use_enable enlightenment_conf_dialogs)
	  $(use_enable enlightenment_conf_display)
	  $(use_enable enlightenment_conf_dpms)
	  $(use_enable enlightenment_conf_engine)
	  $(use_enable enlightenment_conf_fonts)
	  $(use_enable enlightenment_conf_imc)
	  $(use_enable enlightenment_conf_intl)
	  $(use_enable enlightenment_conf_menus)
	  $(use_enable enlightenment_conf_mime)
	  $(use_enable enlightenment_conf_mouse)
	  $(use_enable enlightenment_conf_paths)
	  $(use_enable enlightenment_conf_profiles)
	  $(use_enable enlightenment_conf_scale)
	  $(use_enable enlightenment_conf_shelves)
	  $(use_enable enlightenment_conf_startup)
	  $(use_enable enlightenment_conf_theme)
	  $(use_enable enlightenment_conf_winlist)
	  $(use_enable connman)
	  $(use_enable cpufreq)
	  $(use_enable dropshadow)
	  $(use_enable everything)
	  $(use_enable fileman)
	  $(use_enable ibar)
	  $(use_enable ibox)
	  $(use_enable illume2)
	  $(use_enable illume)
	  $(use_enable ofono)
	  $(use_enable pager)
	  $(use_enable start)
	  $(use_enable syscon)
	  $(use_enable systray)
	  $(use_enable temperature)
	  $(use_enable winlist)
	  $(use_enable wizard)
	  $(use_enable enlightenment_everything_files)
	  $(use_enable enlightenment_everything_apps)
	  $(use_enable enlightenment_everything_calc)
	  $(use_enable enlightenment_everything_aspell)
	  $(use_enable enlightenment_everything_settings)
	  $(use_enable enlightenment_everything_windows)
	"
	efl_src_configure
}

src_install() {
	efl_src_install
	insinto /etc/enlightenment
	newins "${FILESDIR}/gentoo-sysactions.conf" sysactions.conf
}
