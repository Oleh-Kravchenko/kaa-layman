# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Library with a lot of useful C routines"
HOMEPAGE="https://github.com/Oleh-Kravchenko/libtools"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/libtools.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc mysql uri"

RDEPEND="dev-libs/openssl:*
	mysql? ( virtual/libmysqlclient )
	uri? ( dev-libs/uriparser )"
DEPEND="${RDEPEND}
	doc? ( app-doc/doxygen )"

src_configure() {
	local mycmakeargs=(
		-DWITH_DOC="$(usex doc ON OFF)"
		-DWITH_MYSQL="$(usex mysql ON OFF)"
		-DWITH_URIPARSER="$(usex uri ON OFF)"
	)

	cmake-utils_src_configure
}
