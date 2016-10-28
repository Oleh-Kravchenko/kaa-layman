# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

DESCRIPTION="Static Code Analyzer for C, C++ and C#"
HOMEPAGE="http://www.viva64.com/en/pvs-studio/"
SRC_URI="http://files.viva64.com/${P}-1.x86_64.tgz"

LICENSE="free-noncomm"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}"

src_install() {
	dobin plog-converter pvs-studio pvs-studio-analyzer
	dodoc README.md
}
