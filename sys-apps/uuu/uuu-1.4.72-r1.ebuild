# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cmake

DESCRIPTION="Freescale/NXP I.MX Chip image deploy tools"
HOMEPAGE="https://github.com/NXPmicro/mfgtools"
SRC_URI="https://github.com/NXPmicro/mfgtools/releases/download/${PN}_${PV}/${PN}_source-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~arm ~arm64 ~amd64 ~x86"
IUSE=""

DEPEND="app-arch/bzip2
	>=dev-libs/libusb-1.0.16
	dev-libs/openssl
	sys-libs/zlib"
RDEPEND="${DEPEND}"

src_prepare() {
	rm -rf bzip2 libusb zlib

	cmake_src_prepare
}

src_install() {
	cmake_src_install

	dobashcomp "${FILESDIR}"/uuu
}
