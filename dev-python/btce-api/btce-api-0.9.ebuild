# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="Python wrapper around the public and trading APIs of BTC-e.com"
HOMEPAGE="https://github.com/CodeReclaimers/btce-api"
SRC_URI="https://github.com/CodeReclaimers/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

pkg_setup() {
	python-single-r1_pkg_setup
}

src_test() {
	"${PYTHON}" -m unittest discover -s test -v || die "tests failed under ${EPYTHON}"
}
