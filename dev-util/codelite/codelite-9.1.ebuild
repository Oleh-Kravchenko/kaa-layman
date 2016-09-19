# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
WX_GTK_VER=3.0

inherit cmake-utils wxwidgets

DESCRIPTION="A Free, open source, cross platform C, C++, PHP and Node.js IDE"
HOMEPAGE="http://codelite.org/"
SRC_URI="https://github.com/eranif/codelite/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="clang flex lldb mysql pch sftp"

RDEPEND="app-text/hunspell
	clang? ( sys-devel/llvm[clang] )
	dev-db/sqlite:3
	mysql? ( virtual/libmysqlclient )
	lldb? ( sys-devel/llvm[lldb] )
	sftp? ( net-libs/libssh )
	x11-libs/wxGTK:${WX_GTK_VER}[X]"
DEPEND="${RDEPEND}
	flex? ( sys-devel/flex )"

PATCHES=("${FILESDIR}/${P}-dont_strip.patch")

src_prepare() {
	eapply ${PATCHES[@]}
	eapply_user
}

src_configure() {
	setup-wxwidgets

	local mycmakeargs=(
		-DAUTOGEN_REVISION=0
		-DENABLE_CLANG=$(usex clang 1 0)
		-DENABLE_LLDB=$(usex lldb 1 0)
		-DENABLE_SFTP=$(usex sftp 1 0)
		-DWITH_FLEX=$(usex flex 1 0)
		-DWITH_MYSQL=$(usex mysql 1 0)
		-DWITH_PCH=$(usex pch 1 0)
		-DWITH_WEBVIEW=1
		-DWITH_WXC=1
	)

	cmake-utils_src_configure
}
