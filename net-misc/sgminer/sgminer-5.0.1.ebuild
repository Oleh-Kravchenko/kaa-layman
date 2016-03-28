# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools eutils

DESCRIPTION="Scrypt GPU miner"
HOMEPAGE="https://github.com/sgminer-dev/sgminer"
SRC_URI="https://github.com/sgminer-dev/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="adl +curl +curses reboot"

DEPEND="adl? ( x11-libs/amd-adl-sdk )
	curl? ( net-misc/curl )
	curses? ( sys-libs/ncurses )
	>=dev-libs/jansson-2.6"
RDEPEND="${DEPEND}"

src_prepare() {
	if use adl ; then
		ln -s /usr/include/ADL/* ADL_SDK/
	fi

	if use reboot ; then
		epatch "${FILESDIR}"/${PN}_reboot.patch
	fi

	epatch "${FILESDIR}"/${P}.patch
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable adl) \
		$(use_enable curl libcurl) \
		$(use_with curses) \
		--enable-shared
}
