# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Linux/OSX/FreeBSD resource monitor"
HOMEPAGE="https://github.com/aristocratos/bpytop"
SRC_URI="https://files.pythonhosted.org/packages/39/64/a72dd8d462de428f36d1f4a17f21ff5f71d382eb92dc1ddbb6b98e6ebb2e/bpytop-1.0.62.tar.gz"

DEPEND=""
RDEPEND="dev-python/psutil[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/bpytop-${PV}"

src_install() {
	insinto "/usr/share/${PN}/themes"
	doins bpytop-themes/*.theme
	distutils-r1_src_install
}
