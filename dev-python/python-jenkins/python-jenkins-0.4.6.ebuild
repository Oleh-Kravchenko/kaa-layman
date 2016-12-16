# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils

DESCRIPTION="Python bindings for the remote Jenkins API"
HOMEPAGE="http://git.openstack.org/cgit/openstack/python-jenkins"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="dev-python/multi_key_dict
	>dev-python/pbr-0.8.2
	>=dev-python/six-1.3.0"
DEPEND="${RDEPEND}
	dev-python/setuptools"
