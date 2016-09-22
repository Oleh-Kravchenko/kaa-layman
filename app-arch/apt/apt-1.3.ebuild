# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

CMAKE_MIN_VERSION=3.4
inherit cmake-utils git-r3

DESCRIPTION="Set of tools for managing Debian packages"
HOMEPAGE="https://wiki.debian.org/Apt"
EGIT_COMMIT="${PV}"
EGIT_REPO_URI="https://anonscm.debian.org/git/apt/apt.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="doc nls test"

RDEPEND="app-arch/bzip2
	app-arch/dpkg
	app-arch/lz4
	app-arch/xz-utils
	net-misc/curl
	sys-libs/db:=
	sys-libs/zlib"
DEPEND="${RDEPEND}
	test? ( dev-cpp/gtest )
	doc? (
		app-doc/doxygen
		virtual/w3m
	)
	nls? ( virtual/libintl )
	virtual/libiconv
	virtual/pkgconfig"

src_configure() {
	local mycmakeargs=(
		-DWITH_DOC="$(usex doc)"
		-DUSE_NLS="$(usex nls)"
	)

	cmake-utils_src_configure
}
