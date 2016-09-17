EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="C implementation of the logging library"
HOMEPAGE="https://github.com/Oleh-Kravchenko/liblog"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/liblog.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="dev-libs/libtools[uri]"
DEPEND="${RDEPEND}
	app-doc/doxygen"
