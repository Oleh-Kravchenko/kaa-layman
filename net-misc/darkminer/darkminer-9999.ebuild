EAPI=5

inherit autotools flag-o-matic git-2

DESCRIPTION="Darkcoin GPU miner in C"
HOMEPAGE="https://www.darkcoin.io/ https://github.com/darkcoinproject/darkcoin-sgminer"
EGIT_REPO_URI="https://github.com/darkcoinproject/darkcoin-sgminer.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc examples hardened ncurses opencl adl scrypt
	avalon bflsc bitforce bitfury icarus klondike modminer reboot"

REQUIRED_USE="|| ( opencl avalon bflsc bitforce bitfury icarus klondike modminer )
	adl? ( opencl )
	scrypt? ( opencl )"

DEPEND="net-misc/curl
	dev-libs/jansson
	adl? ( x11-libs/amd-adl-sdk )
	ncurses? ( sys-libs/ncurses )
	opencl? ( virtual/opencl )
	avalon? ( virtual/libusb:1 )
	bflsc? ( virtual/libusb:1 )
	bitforce? ( virtual/libusb:1 )
	bitfury? ( virtual/libusb:1 )
	icarus? ( virtual/libusb:1 )
	modminer? ( virtual/libusb:1 )"
RDEPEND="${DEPEND}"

src_prepare() {
	ln -s /usr/include/ADL/* ADL_SDK/
	if use reboot; then
		epatch "${FILESDIR}/${P}_reboot.patch"
	fi
	eautoreconf
}

src_configure() {
	use hardened && append-cflags "-nopie"

	econf $(use_with ncurses curses) \
		$(use_enable opencl) \
		$(use_enable adl) \
		$(use_enable scrypt) \
		$(use_enable avalon) \
		$(use_enable bflsc) \
		$(use_enable bitforce) \
		$(use_enable bitfury) \
		$(use_enable icarus) \
		$(use_enable klondike) \
		$(use_enable modminer)
	# sanitize directories (is this still needed?)
	sed -i 's~^\(\#define CGMINER_PREFIX \).*$~\1"'"${EPREFIX}/usr/lib/darkminer"'"~' config.h
}

src_install() { # How about using some make install?
	dobin sgminer
	if use doc; then
		dodoc AUTHORS NEWS README API-README
		use opencl && dodoc GPU-README
		use scrypt && dodoc SCRYPT-README
		use icarus || use bitforce || use modminer && dodoc FPGA-README
		use avalon || use bflsc && dodoc ASIC-README
	fi

	if use modminer; then
		insinto /usr/lib/darkminer/modminer
		doins bitstreams/*.ncd
		dodoc bitstreams/COPYING_fpgaminer
	fi
	if use opencl; then
		insinto /usr/lib/darkminer
		doins kernel/*.cl
	fi
	if use examples; then
		docinto examples
		dodoc api-example.php miner.php API.java api-example.c example.conf
	fi
}
