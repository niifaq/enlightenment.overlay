# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/imlib2_loaders/imlib2_loaders-9999.ebuild,v 1.3 2005/04/10 03:43:09 vapier Exp $

inherit enlightenment

SRC_URI="http://download.enlightenment.org/snapshots/2007-08-26/${P}.tar.gz"

DESCRIPTION="image loader plugins for Imlib 2"
HOMEPAGE="http://www.enlightenment.org/pages/imlib2.html"

IUSE="edb"

RDEPEND=">=media-libs/imlib2-1.4.0.003
	>=dev-libs/eet-0.9.10.041
	edb? ( >=dev-db/edb-1.0.5.008 )"

# The enable-eet switch is apparently broken upstream when using disable-edb.
# Looks like some sort of error in the configure.in scripts. Probably a
# copy/paste error or something.
# For now, we'll install the dep using portage
# and let the autotools detect it. (Seems to work fine on x86 this way)
#src_compile() {
#	export MY_ECONF="
#		--enable-eet \
#		$(use_enable edb) \
#	"
#	enlightenment_src_compile
#}
