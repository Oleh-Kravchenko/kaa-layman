# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 toolchain-funcs

DESCRIPTION="High-level CPP Binding for ZeroMQ"
HOMEPAGE="https://github.com/zeromq/cppzmq"
EGIT_REPO_URI="git://github.com/zeromq/cppzmq.git"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~arm ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=net-libs/zeromq-4"
DEPEND=""

src_install() {
	doheader zmq.hpp zmq_addon.hpp
	dodoc README
}

src_test() {
	$(tc-getCC) -c ./zmq.hpp -L ./.libs/ -I ./include/ -o ./test.o || die "This version of cppzmq is not compatible with the installed version of net-libs/zeromq"
	rm -f ./test.o
}
