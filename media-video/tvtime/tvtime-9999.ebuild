# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools git-r3

DESCRIPTION="High quality television application for use with video capture cards"
HOMEPAGE="https://git.linuxtv.org/tvtime.git/about/"
EGIT_REPO_URI="https://git.linuxtv.org/cgit.cgi/tvtime.git"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64-linux ~arm-linux ~x86-linux"
IUSE="nls static xinerama"

RDEPEND=""
DEPEND=""

src_prepare() {
	eautoreconf
	default
}

src_configure() {
	econf \
		$(use_enable nls) \
		$(use_enable static) \
		$(use_with xinerama) \
		|| die "econf failed"
}
