# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit enlightenment

DESCRIPTION="image loader plugins for Imlib 2"
HOMEPAGE="http://www.enlightenment.org/pages/imlib2.html"

IUSE="edb"

RDEPEND=">=media-libs/imlib2-9999
	>=dev-libs/eet-9999
	edb? ( >=dev-db/edb-9999 )"

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
