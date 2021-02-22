# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Linux/OSX/FreeBSD resource monitor"
HOMEPAGE="https://github.com/aristocratos/bpytop"
SRC_URI="https://files.pythonhosted.org/packages/a5/4b/6822d87164e2696705e8e3d08b7f9431e9b7d17226954db96e864b8ca534/bpytop-1.0.63.tar.gz"

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
