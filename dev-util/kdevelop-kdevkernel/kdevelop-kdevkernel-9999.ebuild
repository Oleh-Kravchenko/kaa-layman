EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="KDevelop Linux Kernel Development Plugin"
HOMEPAGE="https://github.com/Gnurou/kdev-kernel"
EGIT_REPO_URI="https://github.com/Gnurou/kdev-kernel.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-util/kdevelop-4.7:4"
RDEPEND="${DEPEND}"
