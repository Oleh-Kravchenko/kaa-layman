EAPI=5

inherit autotools flag-o-matic git-2

DESCRIPTION="Vertcoin CPU miner in C"
HOMEPAGE="http://vertcoin.org/ https://github.com/Bufius/cpuminer-vert"
EGIT_REPO_URI="https://github.com/Bufius/cpuminer-vert"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/jansson
	dev-libs/openssl
	net-misc/curl
	sys-libs/zlib"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf
}

src_install() {
	dobin minerd
	newman minerd.1 minerd.1
}
