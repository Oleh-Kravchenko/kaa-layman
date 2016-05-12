EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Ethereum miner with CUDA and stratum support"
HOMEPAGE="https://github.com/Genoil/cpp-ethereum"
EGIT_REPO_URI="https://github.com/Genoil/cpp-ethereum.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-cpp/libjson-rpc-cpp-0.4[http-server]
	>=dev-libs/crypto++-5.6.2
	dev-libs/leveldb
	dev-libs/jsoncpp
	sys-libs/readline
	virtual/opencl
	net-misc/curl
	dev-libs/boost
	dev-libs/gmp
	net-libs/miniupnpc"

src_configure() {
	local mycmakeargs=(
		-DBUNDLE="miner"
	)

	cmake-utils_src_configure
}
