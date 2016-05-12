EAPI=6

inherit autotools

DESCRIPTION="Small C library for x86 CPU detection and feature extraction"
HOMEPAGE="http://www.clementine-player.org https://github.com/clementine-player/Clementine"
SRC_URI="https://github.com/anrieff/libcpuid/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_prepare() {
	eautoreconf
	default
}
