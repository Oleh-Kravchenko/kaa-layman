# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="CMake module for checking backward compatibility of a C/C++ library"
HOMEPAGE="https://github.com/Oleh-Kravchenko/cmake-abicc"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/cmake-abicc.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-util/cmake-version4git"
RDEPEND="dev-util/abi-compliance-checker"
