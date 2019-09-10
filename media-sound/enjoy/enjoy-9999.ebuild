# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
EFL_USE_GIT="yes"
EFL_GIT_REPO_CATEGORY="apps"
E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="Music player written using the EFL"
IUSE="asf flac +id3 mp4 ogg +playlist real"

RDEPEND="
	 >=dev-libs/efl-1.11.2
	 >=media-libs/lightmediascanner-0.4.1.0[asf?,flac?,id3?,mp4?,ogg?,playlist?,real?]
	 >=dev-db/sqlite-3.6
"
DEPEND="${RDEPEND}"
