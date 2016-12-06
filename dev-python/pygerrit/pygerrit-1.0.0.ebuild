# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils

DESCRIPTION="Client library for interacting with Gerrit"
HOMEPAGE="https://github.com/sonyxperiadev/pygerrit"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-python/paramiko
	dev-python/requests"
DEPEND="${RDEPEND}
	dev-python/setuptools"
