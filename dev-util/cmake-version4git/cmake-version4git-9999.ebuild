# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Projects version definition with Git tags and CMake"
HOMEPAGE="https://github.com/Oleh-Kravchenko/cmake-version4git"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/cmake-version4git.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64
	~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND="dev-vcs/git"
RDEPEND="${DEPEND}"
