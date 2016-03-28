# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit pam toolchain-funcs

DESCRIPTION="PAM module for auto mounting encfs drives on login."
HOMEPAGE="http://code.google.com/p/pam-encfs/"
SRC_URI="http://pam-encfs.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-libs/pam
	sys-fs/encfs"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	cd ${S}
	sed -i -e "s:/lib/:/$(get_libdir)/:" \
		-e "s:gcc:$(tc-getCC):" \
		-e "s:ld:$(tc-getLD):" Makefile || die "sed failed in Makefile"

	sed -i -e "s:drop_permissions:#drop_permissions:" \
		-e "s:encfs_default:#encfs_default:" \
		-e "s:fuse_default:#fuse_default:" \
		-e "18s:-:#-:" pam_encfs.conf || die "sed failed in pam_encfs.conf"
}

#src_install() {
#	dopammod pam_encfs.so
#	insinto /etc/security
#	doins pam_encfs.conf
#	dodoc README
#}

pkg_postinst() {
	einfo "See /usr/share/doc/${P}/README.gz for configuration info"
	einfo "and set up /etc/security/pam_encfs.conf as needed."
}
