# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-plugins/e_modules/e_modules-9999.ebuild,v 1.6 2006/09/14 15:21:04 vapier Exp $

EAPI="2"

E_EXTERNAL="yes"
inherit efl

DESCRIPTION="e_modules meta package - merge this to pull in all e_modules"

IUSE=""

DEPEND="x11-plugins/e_modules-alarm
	x11-plugins/e_modules-calendar
	x11-plugins/e_modules-cpu
	x11-plugins/e_modules-deskshow
	x11-plugins/e_modules-diskio
	x11-plugins/e_modules-drawer
	x11-plugins/e_modules-efm_nav
	x11-plugins/e_modules-efm_path
	x11-plugins/e_modules-emu
	x11-plugins/e_modules-execwatch
	x11-plugins/e_modules-flame
	x11-plugins/e_modules-forecasts
	x11-plugins/e_modules-iiirk
	x11-plugins/e_modules-language
	x11-plugins/e_modules-mail
	x11-plugins/e_modules-mem
	x11-plugins/e_modules-moon
	x11-plugins/e_modules-mpdule
	x11-plugins/e_modules-net
	x11-plugins/e_modules-news
	x11-plugins/e_modules-notification
	x11-plugins/e_modules-penguins
	x11-plugins/e_modules-photo
	x11-plugins/e_modules-places
	x11-plugins/e_modules-rain
	x11-plugins/e_modules-screenshot
	x11-plugins/e_modules-slideshow
	x11-plugins/e_modules-snow
	x11-plugins/e_modules-taskbar
	x11-plugins/e_modules-tclock
	x11-plugins/e_modules-tiling
	x11-plugins/e_modules-uptime
	x11-plugins/e_modules-weather
	x11-plugins/e_modules-winselector
	x11-plugins/e_modules-wlan"

RDEPEND="${DEPEND}"

PROPERTIES="set"

src_unpack() { :; }
src_compile() { :; }
src_install() { :; }
