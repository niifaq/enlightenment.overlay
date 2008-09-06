# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="GTK2 theme to match the default E17 Bling theme"
HOMEPAGE="http://www.gnome-look.org/content/show.php?content=38481"
SRC_URI="http://www.gnome-look.org/CONTENT/content-files/38481-e17-bling.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc64 sh sparc x86"
IUSE=""

DEPEND=""

S=${WORKDIR}/e17-bling

src_install() {
	insinto /usr/share/gtk-2.0/e17-bling
	doins -r gtk-2.0/* || die
}
