EAPI=5

inherit cmake-utils eutils git-2

DESCRIPTION="C utility functions for OpenWrt"
HOMEPAGE="https://wiki.openwrt.org/doc/techref/libubox"
EGIT_REPO_URI="https://git.openwrt.org/project/libubox.git"

LICENSE="LGPL-2"
SLOT="live"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="examples lua static-libs"

DEPEND="virtual/libc"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use examples BUILD_EXAMPLES)
		$(cmake-utils_use lua BUILD_LUA)
		)

	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install

	if ! use static-libs; then
		rm ${D}/usr/lib/libblobmsg_json.a
		rm ${D}/usr/lib/libubox.a
	fi
}
