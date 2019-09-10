# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

E_PKG_IUSE="doc nls"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="core"
inherit eutils efl meson

DESCRIPTION="Enlightenment DR17 window manager"
HOMEPAGE="https://www.enlightenment.org/"

SLOT="0.17"

IUSE="eeze illume2 opengl pam pm-utils +sysactions systemd tracker
		+udev udisks wayland xinerama xscreensaver debug"

# grep module ./meson_options.txt | awk -F' ' '{print "    +"$3}'
IUSE_ENLIGHTENMENT_MODULES="
	+appmenu
	+backlight
	+battery
	+bluez4
	+clock
	+connman
	+cpufreq
	+everything
	+fileman
	+fileman-opinfo
	+gadman
	+geolocation
	+ibar
	+ibox
	+lokker
	+luncher
	+mixer
	+msgbus
	+music-control
	+notification
	+packagekit
	+pager
	+pager-plain
	+quickaccess
	+start
	+shot
	+syscon
	+sysinfo
	+systray
	+tasks
	+teamwork
	+temperature
	+tiling
	+time
	+winlist
	+wireless
	+wizard
	+xkbswitch
	+vkbd

	+conf
	+conf-applications
	+conf-bindings
	+conf-dialogs
	+conf-display
	+conf-interaction
	+conf-intl
	+conf-menus
	+conf-paths
	+conf-performance
	+conf-randr
	+conf-shelves
	+conf-theme
	+conf-window-manipulation
	+conf-window-remembers

	wl-buffer
	wl-drm
	wl-wl
	wl-x11
	wl-desktop-shell
	wl-text-input
	wl-weekeyboard
"

RDEPEND="
	pam? ( sys-libs/pam )
	tracker? ( app-misc/tracker )
	pm-utils? ( sys-power/pm-utils )
	>=dev-libs/efl-9999[opengl?]

	eeze? ( >=dev-libs/efl-9999 )

	>=dev-libs/efl-9999[X]
	udev? ( virtual/udev )
	systemd? ( sys-apps/systemd )
	wayland? ( dev-libs/efl[wayland]
		>=dev-libs/wayland-1.2.0
		>=x11-libs/pixman-0.31.1
		>=x11-libs/libxkbcommon-0.3.1 )
	enlightenment_modules_mixer? ( media-libs/alsa-lib )
	enlightenment_modules_everything? ( app-text/aspell sys-devel/bc )

	debug? ( sys-devel/gdb )
"

REQUIRED_USE="enlightenment_modules_wl-desktop-shell? ( wayland )"

DEPEND="${RDEPEND}"

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
	local emesonargs=(
	    -Dpam=$(usex pam true false)
	    -Dsystemd=$(usex systemd true false)
	    -Dmount-eeze=$(usex eeze true false)
	    -Ddevice-udev=$(usex udev true false)
	    -Dmount-udisks=$(usex udisks true false)
	    -Dinstall-sysactions=$(usex sysactions true false)
	    -Dwayland=$(usex wayland true false)
	    -Dxwayland=$(usex wayland true false)
	    -Dxwayland-bin=$(usex wayland true false)
	)
	meson_src_configure

	local module=

	for module in ${IUSE_ENLIGHTENMENT_MODULES}; do
		module="${module#+}"
		emesonargs+=" -D${module}=$(usex enlightenment_modules_${module} true false)"
	done
}

src_install() {
	meson_src_install
	insinto /etc/enlightenment

	newins "${FILESDIR}/gentoo-sysactions.conf" sysactions.conf

	if use debug; then
		einfo "Registering gdb into your /etc/enlightenment/sysactions.conf"

		echo "action: gdb /usr/bin/gdb" >>				\
							${D}/etc/enlightenment/sysactions.conf
	fi
}
