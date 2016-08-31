# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="The multiple repository tool from Android"
HOMEPAGE="http://code.google.com/p/git-repo/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-vcs/git dev-lang/python"

src_unpack() {
	mkdir -p "${S}" || die
	cp "${FILESDIR}/${P}" "${S}/${PN}" || die
}

src_install() {
	exeinto /opt/bin
	doexe "${PN}" || die
}
