# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="C implementation of the logging library"
HOMEPAGE="https://github.com/Oleh-Kravchenko/liblog"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/liblog.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND="dev-libs/libtools[uri]"
DEPEND="${RDEPEND}
	doc? ( app-doc/doxygen )"
