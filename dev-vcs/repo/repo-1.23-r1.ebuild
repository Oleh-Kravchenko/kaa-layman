# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="The multiple repository tool from Android"
HOMEPAGE="http://code.google.com/p/git-repo/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="dev-vcs/git dev-lang/python:2.7"

src_unpack() {
	mkdir -p "${S}" || die
	cp "${FILESDIR}/${P}" "${S}/${PN}" || die
}

src_install() {
	exeinto /opt/bin
	doexe "${PN}" || die

	# for compatibility with Jenkins CI
	dosym ../../opt/bin/repo usr/bin/repo
}
