# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Easy Doxygen integration with CMake"
HOMEPAGE="https://github.com/Oleh-Kravchenko/cmake-doxygen"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/cmake-doxygen.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+plantuml"

DEPEND=""
RDEPEND="app-doc/doxygen
	plantuml? ( media-gfx/plantuml )"
