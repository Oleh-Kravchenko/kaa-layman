EAPI=5

inherit cmake-utils eutils git-2

DESCRIPTION="OpenWrt micro bus architecture"
HOMEPAGE="https://wiki.openwrt.org/doc/techref/ubus"
EGIT_REPO_URI="https://git.openwrt.org/project/ubus.git"

LICENSE="LGPL-2.1"
SLOT="live"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="examples lua systemd"

DEPEND="virtual/libc
	dev-libs/libubox"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use examples BUILD_EXAMPLES)
		$(cmake-utils_use lua BUILD_LUA)
		$(cmake-utils_use systemd ENABLE_SYSTEMD)
		)

	cmake-utils_src_configure
}
