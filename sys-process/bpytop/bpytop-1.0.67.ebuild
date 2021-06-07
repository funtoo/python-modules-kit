# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Linux/OSX/FreeBSD resource monitor"
HOMEPAGE="https://github.com/aristocratos/bpytop"
SRC_URI="https://files.pythonhosted.org/packages/e9/1a/fd710c94c0888b139681d132f60608c657ff265b50b9312fd3cba35e08dc/bpytop-1.0.67.tar.gz
"

DEPEND=""
RDEPEND="dev-python/psutil[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/bpytop-1.0.67"

src_install() {
	insinto "/usr/share/${PN}/themes"
	doins themes/*.theme
	distutils-r1_src_install
}
