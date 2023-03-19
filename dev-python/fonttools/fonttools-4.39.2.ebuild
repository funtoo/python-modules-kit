# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/fonttools/fonttools https://pypi.org/project/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/0b/f9/fbd1287671d35f8984be7952d61c0d968df9794e2d5009513424201d9264/fonttools-4.39.2.zip -> fonttools-4.39.2.zip
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.39.2"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
