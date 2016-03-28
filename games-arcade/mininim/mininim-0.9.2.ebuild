# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools eutils

DESCRIPTION="The Advanced Prince of Persia Engine - a childhood dream"
HOMEPAGE="http://oitofelix.github.io/mininim/"
SRC_URI="http://oitofelix.github.io/mininim/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="media-libs/allegro:5[alsa,gtk,png,truetype,vorbis]"
RDEPEND="${DEPEND}"

PATCHES=("${FILESDIR}/${P}-sandbox.patch")

src_prepare() {
	eapply ${PATCHES[@]}
	eapply_user
	eautoreconf
}

src_configure() {
	unset LINGUAS
	default
}

src_install() {
	default
	make_desktop_entry mininim Mininim /usr/share/${PN}/data/icons/${PN}.png
}
