# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit cmake-utils

DESCRIPTION="Mag-Tek Mini Swipe Reader mode switch tool"
HOMEPAGE="http://www.kaa.org.ua/programmi/magtek-card-reader-switch.html"
SRC_URI="http://www.kaa.org.ua/distfiles/magtek_cr_switch-${PV}.tar.bz2"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/libusb:1"
RDEPEND="${DEPEND}"

src_compile() {
	cmake-utils_src_configure
}
