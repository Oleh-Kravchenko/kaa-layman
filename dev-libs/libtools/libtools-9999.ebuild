EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Library with a lot of useful C routines"
HOMEPAGE="http://www.kaa.org.ua/"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/libtools.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="
	dev-db/mysql
	dev-libs/openssl
	dev-libs/uriparser"
DEPEND="${RDEPEND}
	app-doc/doxygen"
