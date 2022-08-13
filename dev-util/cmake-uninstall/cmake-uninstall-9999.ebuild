# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="Adds uninstall target to CMake projects"
HOMEPAGE="https://github.com/Oleh-Kravchenko/cmake-uninstall"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/cmake-uninstall.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64
	~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND="dev-vcs/git"
RDEPEND="${DEPEND}"
