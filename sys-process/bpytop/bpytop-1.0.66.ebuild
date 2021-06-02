# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Linux/OSX/FreeBSD resource monitor"
HOMEPAGE="https://github.com/aristocratos/bpytop"
SRC_URI="https://files.pythonhosted.org/packages/d5/b7/0a8783bc25cccf20da0086ee733184470e4a9c155a5c62e3af81bf8dc187/bpytop-1.0.66.tar.gz
"

DEPEND=""
RDEPEND="dev-python/psutil[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/bpytop-1.0.66"

src_install() {
	insinto "/usr/share/${PN}/themes"
	doins themes/*.theme
	distutils-r1_src_install
}
