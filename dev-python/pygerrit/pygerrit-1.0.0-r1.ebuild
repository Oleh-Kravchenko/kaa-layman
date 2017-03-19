# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Client library for interacting with Gerrit"
HOMEPAGE="https://github.com/sonyxperiadev/pygerrit"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-python/ecdsa-0.11[${PYTHON_USEDEP}]
	>=dev-python/paramiko-1.16.0[${PYTHON_USEDEP}]
	>=dev-python/pbr-0.8.0[${PYTHON_USEDEP}]
	>=dev-python/pycrypto-2.6.1[${PYTHON_USEDEP}]
	>=dev-python/requests-2.9.1[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
