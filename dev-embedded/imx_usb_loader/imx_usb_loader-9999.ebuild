EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Usb loader for imx51/53/6x"
HOMEPAGE="https://github.com/boundarydevices/imx_usb_loader"
EGIT_REPO_URI="https://github.com/Oleh-Kravchenko/imx_usb_loader.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/libusb:1"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_SYSCONFDIR="${EPREFIX}/etc"
	)

	cmake-utils_src_configure
}
