# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Userspace tools for MMC/SD devices"
HOMEPAGE="https://git.kernel.org/pub/scm/linux/kernel/git/cjb/mmc-utils.git"
EGIT_REPO_URI="https://git.kernel.org/pub/scm/linux/kernel/git/cjb/mmc-utils.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	eapply "${FILESDIR}/fix_cflags.patch"
	default
}

src_install() {
	doman man/mmc.1
	emake prefix="${D}/usr" install
}
