# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="low-level toolkit for handling native code dynamically at run time"
HOMEPAGE="http://www.dyncall.org/"
SRC_URI="http://www.dyncall.org/r${PV}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE="cmake"

DEPEND=""
RDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DINSTALL_CMAKE_MODULES="$(usex cmake)"
	)

	cmake-utils_src_configure
}
