# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library for manipulating TrueType, OpenType, AFM and Type1 fonts"
HOMEPAGE="https://github.com/fonttools/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/6d/f8/d3116b436553856df4ed9094584ac55c5e99ee9d9f3369f2912bbb8d0b90/fonttools-4.44.0.tar.gz -> fonttools-4.44.0.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.44.0"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
