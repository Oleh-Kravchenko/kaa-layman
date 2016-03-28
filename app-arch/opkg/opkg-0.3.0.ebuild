# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="Opkg is a lightweight package management system based on Ipkg"
HOMEPAGE="http://git.yoctoproject.org/cgit/cgit.cgi/opkg/"
SRC_URI="http://downloads.yoctoproject.org/releases/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86"
IUSE="curl gpg openssl sha256"

DEPEND="app-arch/libarchive
	gpg? ( app-crypt/gpgme )
	openssl? ( dev-libs/openssl )
	curl? ( net-misc/curl )"
RDEPEND="${DEPEND}"

src_configure() {
	econf \
		$(use_enable curl) \
		$(use_enable gpg) \
		$(use_enable openssl) \
		$(use_enable sha256)
}
