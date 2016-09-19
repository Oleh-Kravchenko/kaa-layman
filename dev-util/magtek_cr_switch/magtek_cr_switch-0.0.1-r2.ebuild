# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="Mag-Tek Mini Swipe Reader mode switch tool"
HOMEPAGE="http://www.kaa.org.ua/programmi/magtek-card-reader-switch.html"
SRC_URI="https://github.com/Oleh-Kravchenko/magtek_cr_switch/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/libusb:1"
RDEPEND="${DEPEND}"
