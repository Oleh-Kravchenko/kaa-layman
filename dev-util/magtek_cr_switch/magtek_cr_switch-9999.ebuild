# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="Mag-Tek Mini Swipe Reader mode switch tool"
HOMEPAGE="http://www.kaa.org.ua/programmi/magtek-card-reader-switch.html"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/magtek_cr_switch.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/libusb:1"
RDEPEND="${DEPEND}"
