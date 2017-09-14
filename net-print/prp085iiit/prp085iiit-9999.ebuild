# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Driver for Tysso PRP-085IIIT printer"
HOMEPAGE="https://www.kaa.org.ua/ru/25-programs/42-driver_prp085iiit.html"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/prp085iiit.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-print/cups"
RDEPEND="${DEPEND}"
