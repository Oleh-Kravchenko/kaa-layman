# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit linux-mod eutils

DESCRIPTION="MT7630e PCIe Wifi"
HOMEPAGE="https://github.com/benjarobin/MT7630E.git"
SRC_URI="https://github.com/benjarobin/MT7630E/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/MT7630E-${PV}"

pkg_setup() {
	linux-mod_pkg_setup

	MODULE_NAMES="mt7630e(net/wireless:${S}/rt2x00)"
	BUILD_PARAMS="-C ${KV_DIR} M=${S}/rt2x00"
	BUILD_TARGETS="modules"
}
