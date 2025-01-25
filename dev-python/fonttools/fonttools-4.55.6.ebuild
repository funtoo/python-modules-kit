# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library for manipulating TrueType, OpenType, AFM and Type1 fonts"
HOMEPAGE="https://github.com/fonttools/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/49/2e/0b11e907b90665253dbad425479e874e38a9e81ced397a4e3312b9116935/fonttools-4.55.6.tar.gz -> fonttools-4.55.6.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.55.6"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
