# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="Trac client command-line tools"
HOMEPAGE="https://tamentis.com/projects/cartman/"
SRC_URI="https://tamentis.com/projects/${PN}/files/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-python/requests-1.2[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	>=dev-python/nose-1.0[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
