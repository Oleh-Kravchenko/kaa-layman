EAPI=5

inherit autotools eutils

DESCRIPTION="GPLv2 open source implementation of the TR069 cwmp standard"
HOMEPAGE="http://www.easycwmp.org/"
SRC_URI="http://www.easycwmp.org/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="debug"

DEPEND="dev-libs/json-c
	dev-libs/libubox
	dev-libs/microxml
	net-misc/curl
	sys-devel/ubus
	sys-devel/uci
	virtual/libc"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf --enable-devel \
		$(use_enable debug) \
		--enable-jsonc=0
}
