# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Linux/OSX/FreeBSD resource monitor"
HOMEPAGE="https://github.com/aristocratos/bpytop"
SRC_URI="https://files.pythonhosted.org/packages/c1/fe/25709a8103a6e2d0fc7dc79d919f541156c2c1a758ed5231965c3433588d/bpytop-1.0.64.tar.gz
"

DEPEND=""
RDEPEND="dev-python/psutil[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/bpytop-1.0.64"

src_install() {
	insinto "/usr/share/${PN}/themes"
	doins bpytop-themes/*.theme
	distutils-r1_src_install
}
