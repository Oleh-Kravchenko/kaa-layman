# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils

DESCRIPTION="Trac client command-line tools"
HOMEPAGE="https://tamentis.com/projects/cartman/"
SRC_URI="https://tamentis.com/projects/${PN}/files/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-python/requests-1.2"
DEPEND="${RDEPEND}
	dev-python/setuptools"
