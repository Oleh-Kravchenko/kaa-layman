EAPI=6

inherit cmake-utils

DESCRIPTION="low-level toolkit providing a portable abstraction for handling native code dynamically at run time"
HOMEPAGE="http://www.dyncall.org/"
SRC_URI="http://www.dyncall.org/r${PV}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~powerpc ~x86"
IUSE="cmake"

DEPEND=""
RDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DINSTALL_CMAKE_MODULES="$(usex cmake)"
	)

	cmake-utils_src_configure
}
