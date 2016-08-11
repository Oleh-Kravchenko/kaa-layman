EAPI=6

inherit autotools linux-info

DESCRIPTION="Thin userspace library on top of Linux uinput kernel module"
HOMEPAGE="http://tjjr.fi/sw/libsuinput/"
SRC_URI="https://github.com/tuomasjjrasanen/libsuinput/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs"

DEPEND="sys-apps/attr
	sys-fs/udev
	sys-libs/libcap"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
	default
}

src_configure() {
	econf $(use_enable static-libs static)
}

pkg_setup() {
	CONFIG_CHECK="~INPUT_UINPUT"
	local WARNING_INPUT_UINPUT="User level driver support have not been \
	configured in your kernel.  ${PN} will not work unless INPUT_UINPUT is set."

	check_extra_config
}
