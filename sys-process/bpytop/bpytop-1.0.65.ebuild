# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Linux/OSX/FreeBSD resource monitor"
HOMEPAGE="https://github.com/aristocratos/bpytop"
SRC_URI="https://files.pythonhosted.org/packages/cf/18/a53f8d2393ca8856a9a3e7e6130d6803048d21e7bac60ae6979249436d25/bpytop-1.0.65.tar.gz
"

DEPEND=""
RDEPEND="dev-python/psutil[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/bpytop-1.0.65"

src_install() {
	insinto "/usr/share/${PN}/themes"
	doins bpytop-themes/*.theme
	distutils-r1_src_install
}
