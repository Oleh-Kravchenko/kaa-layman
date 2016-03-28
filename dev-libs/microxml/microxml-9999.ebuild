EAPI=5

inherit autotools eutils git-2

DESCRIPTION="freecwmp fork of Mini-XML"
HOMEPAGE="https://github.com/pivasoftware/microxml"
EGIT_REPO_URI="https://github.com/pivasoftware/microxml"

LICENSE="LGPL-2"
SLOT="live"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="debug static-libs threads"

DEPEND="virtual/libc"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/fix_typo.patch

	eautoreconf
}

src_configure() {
	econf \
		--enable-shared \
		$(use_enable debug) \
		$(use_enable static-libs static) \
		$(use_enable threads)
}

src_install() {
	emake DSTROOT="${D}" install
}
