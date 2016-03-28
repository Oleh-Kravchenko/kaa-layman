# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit cmake-utils subversion

DESCRIPTION="Mag-Tek Mini Swipe Reader mode switch tool"
HOMEPAGE="http://www.kaa.org.ua/programmi/magtek-card-reader-switch.html"
ESVN_REPO_URI="https://www.kaa.org.ua/svn-magtek_cr_switch/magtek_cr_switch/trunk"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="virtual/libusb:1"
RDEPEND="${DEPEND}"

src_unpack() {
	subversion_src_unpack
}

src_compile() {
	cmake-utils_src_configure
}
