# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="misc"
inherit efl

DESCRIPTION="EFL based login manager"

IUSE="consolekit +grub2 pam"

DEPEND="
	>=dev-libs/efl-9999
	consolekit? ( sys-auth/consolekit )
	grub2? ( sys-boot/grub:2 )
	pam? ( virtual/pam )
	"

RDEPEND="${DEPEND}
	x11-apps/xauth
	x11-apps/sessreg
"

src_configure() {
	export MY_ECONF="
	$(use_enable consolekit)
	$(use_enable grub2)
	$(use_enable pam)
	"

	efl_src_configure
}

pkg_postinst() {
	einfo "We are installing x11-apps/xauth and x11-apps/sessreg as"
	einfo "run-time dependency now, as they are listed into /etc/elsa.conf"
	einfo "by default. If your have any problems with such decision and you"
	einfo "prefer some other utils to make same task, please don't hesistate"
	einfo "to tell us, so we make this dependency USE-flag-protected"

	if use grub2; then
	einfo ""
	einfo "You enabled grub2 reboot feature. To make it work, you need to"
	einfo "add line 'GRUB_DEFAULT=saved' to /etc/default/grub"
	fi
}
