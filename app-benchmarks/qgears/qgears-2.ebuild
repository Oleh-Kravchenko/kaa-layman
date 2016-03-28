# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils qt4-r2

MY_P="${PN}${PV}"
DESCRIPTION="Very simple qt4 graphics benchmark based on David Reveman cairogears"
HOMEPAGE="http://zrusin.blogspot.com/2008/08/fast-graphics.html"
SRC_URI="http://www.phoronix-test-suite.com/benchmark-files/${MY_P}.tar.bz2"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-qt/qtopengl:4
	dev-qt/qtgui:4"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_install() {
	dobin "${S}/${PN}"
}
