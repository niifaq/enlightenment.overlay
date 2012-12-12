# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

E_PKG_IUSE="doc nls"
ESVN_URI_APPEND="e"
inherit eutils efl

DESCRIPTION="Enlightenment DR17 window manager"
HOMEPAGE="http://www.enlightenment.org/"

SLOT="0.17"

IUSE="eeze elementary illume2 opengl pam pm-utils +sysactions tracker
		+udev udisks xinerama xscreensaver debug"

IUSE_ENLIGHTENMENT_MODULES="
	+access
	+backlight
	+battery
	+clock
	+comp
	+conf
	+connman
	+cpufreq
	+dropshadow
	+everything
	+fileman
	+fileman_opinfo
	+gadman
	+ibar
	+ibox
	+mixer
	+msgbus
	+notification
	+pager
	physics
	+quickaccess
	+shot
	+start
	+syscon
	+systray
	+tasks
	+temperature
	+tiling
	+winlist
	+wizard
	+xkbswitch

	+conf-applications
	+conf-dialogs
	+conf-display
	+conf-edgebindings
	+conf-interaction
	+conf-intl
	+conf-keybindings
	+conf-menus
	+conf-paths
	+conf-performance
	+conf-randr
	+conf-shelves
	+conf-theme
	+conf-wallpaper2
	+conf-window_manipulation
	+conf-window_remembers
"

RDEPEND="
	pam? ( sys-libs/pam )
	tracker? ( app-misc/tracker )
	pm-utils? ( sys-power/pm-utils )
	>=dev-libs/efreet-9999
	>=dev-libs/e_dbus-9999
	>=media-libs/edje-9999
	>=dev-libs/efl-9999[opengl?,xim]

	|| ( >=dev-libs/efl-9999[X] >=dev-libs/efl-9999[xcb] )
	elementary? ( >=media-libs/elementary-9999 )
	udev? ( dev-libs/eeze )
	enlightenment_modules_mixer? ( media-libs/alsa-lib )
	enlightenment_modules_physics? ( >=dev-libs/ephysics-9999 )
	enlightenment_modules_connman? ( >=dev-libs/e_dbus-9999[connman] )
	enlightenment_modules_everything? ( app-text/aspell sys-devel/bc )

	debug? ( sys-devel/gdb )
"

DEPEND="
	!x11-plugins/e_modules-quickaccess
	!x11-plugins/e_modules-xkbswitch
	!x11-plugins/e_modules-tiling
${RDEPEND}
"

expand_iuse() {
	local flags="$1" prefix="$2" requirement="$3"

	local fullname= flag= is_default=""
	local has_requirement=false

	[[ -z "${requirement}" ]] || has_requirement=true

	for flag in ${flags}; do
		[[ "${flag#+}" == "${flag}" ]] && is_default="" || is_default="+"

		fullname="${prefix}${flag#+}"

		IUSE+=" ${is_default}${fullname}"

		${has_requirement} && REQUIRED_USE+="
			${fullname}? ( ${requirement} )"
	done
}

expand_iuse "${IUSE_ENLIGHTENMENT_MODULES}" "enlightenment_modules_"

src_prepare() {
	#remove useless startup checks since we know we have the deps
	epatch "${FILESDIR}/quickstart.diff" || die

	efl_src_prepare
}

src_configure() {
	# NOTE: mixer is plugin-able, but just alsa is provided atm.
	export MY_ECONF="
	  ${MY_ECONF}
	  --disable-install-sysactions
	  --disable-device-hal
	  --disable-mount-hal
	  $(use_enable elementary)
	  $(use_enable illume2)
	  $(use_enable pam)
	  $(use_enable eeze mount-eeze)
	  $(use_enable udev device-udev)
	  $(use_enable udisks mount-udisks)
	  $(use_enable sysactions install-sysactions)
	"

	local module=

	for module in ${IUSE_ENLIGHTENMENT_MODULES}; do
		module="${module#+}"
		MY_ECONF+=" $(use_enable enlightenment_modules_${module} ${module})"
	done

	efl_src_configure
}

src_install() {
	efl_src_install
	insinto /etc/enlightenment

	newins "${FILESDIR}/gentoo-sysactions.conf" sysactions.conf
	
	if use debug; then
		einfo "Registering gdb into your /etc/enlightenment/sysactions.conf"

		echo "action: gdb /usr/bin/gdb" >>				\
							${D}/etc/enlightenment/sysactions.conf
	fi
}
