# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools git-r3

DESCRIPTION="SocketCAN userspace utilities and tools"
HOMEPAGE="https://github.com/linux-can/can-utils"
EGIT_REPO_URI="https://github.com/linux-can/can-utils.git"
EGIT_COMMIT="c5fd57df344710cbe7363079504de5d6f6a2e79d"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

src_prepare() {
	eautoreconf
	default
}
