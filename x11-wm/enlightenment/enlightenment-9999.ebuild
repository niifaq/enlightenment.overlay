# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc nls"
ESVN_URI_APPEND="e"
inherit efl

DESCRIPTION="Enlightenment DR17 window manager"
HOMEPAGE="http://www.enlightenment.org/"

SLOT="0.17"

# FIXME: 'tracker' USE has no configure flag
# FIXME: 'pm-utils' USE has no configure flag
# FIXME: xinerama, xscreensaver and opengl USEs are indirect
IUSE="exchange hal opengl pam pm-utils +sysactions tracker +udev xinerama xscreensaver"

IUSE_ENLIGHTENMENT_MODULES="
	battery
	bluez
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
	mixer
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
	IUSE+=" +enlightenment_modules_${module}"
done

for module in ${IUSE_ENLIGHTENMENT_CONF}; do
	IUSE+=" +enlightenment_conf_${module}"
done

for plugin in ${IUSE_ENLIGHTENMENT_EVERYTHING}; do
	IUSE+=" +enlightenment_everything_${plugin}"
done

# TODO: pm-utils changes /etc/enlightenment/sysactions.conf
# TODO: patch to not require -i-really-know-what-i-am-doing-and-accept-full-responsibility-for-it
# TODO: patch to make e17 "e_alert()" inform how to compile with debug in gentoo
RDEPEND="
	exchange? ( >=net-libs/exchange-9999 )
	pam? ( sys-libs/pam )
	tracker? ( app-misc/tracker )
	pm-utils? ( sys-power/pm-utils )
	>=dev-libs/eet-9999
	>=dev-libs/efreet-9999
	>=dev-libs/eina-9999[safety-checks]
	>=dev-libs/embryo-9999
	>=dev-libs/ecore-9999[X,evas,opengl?,xinerama?,xscreensaver?,inotify,xim]
	>=dev-libs/e_dbus-9999[hal]
	>=media-libs/edje-9999
	>=media-libs/evas-9999[X,opengl?,eet,jpeg,png,safety-checks]
	udev? ( dev-libs/eeze )
	enlightenment_modules_bluez? ( net-wireless/bluez )
	enlightenment_modules_mixer? ( media-libs/alsa-lib )
	enlightenment_modules_ofono? ( >=dev-libs/e_dbus-9999[ofono] )
	enlightenment_modules_connman? ( >=dev-libs/e_dbus-9999[connman] )
	enlightenment_everything_aspell? ( app-text/aspell )
	enlightenment_everything_calc? ( sys-devel/bc )
"
DEPEND="${RDEPEND}"

pkg_setup() {
	local x= prefix=IUSE_ENLIGHTENMENT

	if ! use enlightenment_modules_everything; then
		for x in ${IUSE_ENLIGHTENMENT_EVERYTHING}; do
			use enlightenment_everything_${x} \
				&& die "${prefix}_EVERYTHING=${x} requires ${prefix}_MODULES=everything"
		done
	fi
	if ! use enlightenment_modules_conf; then
		for x in ${IUSE_ENLIGHTENMENT_CONF}; do
			use enlightnement_conf_${x} \
				&& die "${prefix}_CONF=${x} requires ${prefix}_MODULES=conf"
		done
	fi
}

src_configure() {
	#remove useless startup checks since we know we have the deps
	epatch "${FILESDIR}/quickstart.diff" || die
	# NOTE: mixer is plugin-able, but just alsa is provided atm.
	export MY_ECONF="
	  ${MY_ECONF}
	  --disable-install-sysactions
	  $(use_enable exchange)
	  $(use_enable hal device-hal)
	  $(use_enable pam)
	  $(use_enable udev device-udev)
	  $(use_enable sysactions install-sysactions)
	"

	local module=

	for module in ${IUSE_ENLIGHTENMENT_MODULES}; do
		MY_ECONF+=" $(use_enable enlightenment_modules_${module} ${module})"
	done

	for module in ${IUSE_ENLIGHTENMENT_CONF}; do
		MY_ECONF+=" $(use_enable enlightenment_conf_${module} conf-${module})"
	done

	for module in ${IUSE_ENLIGHTENMENT_EVERYTHING}; do
		MY_ECONF+=" $(use_enable enlightenment_everything_${module} \
														everything-${module})"
	done

	efl_src_configure
}

src_install() {
	efl_src_install
	insinto /etc/enlightenment
	newins "${FILESDIR}/gentoo-sysactions.conf" sysactions.conf
}
