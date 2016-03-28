EAPI=5

inherit cmake-utils eutils git-2

DESCRIPTION="Unified Configuration Interface"
HOMEPAGE="https://wiki.openwrt.org/doc/techref/uci"
EGIT_REPO_URI="https://git.openwrt.org/project/uci.git"

LICENSE="LGPL-2.1"
SLOT="live"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="debug lua"

DEPEND="virtual/libc
	dev-libs/libubox"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use debug UCI_DEBUG)
		$(cmake-utils_use debug UCI_DEBUG_TYPECAST)
		$(cmake-utils_use lua BUILD_LUA)
		)

	cmake-utils_src_configure
}
