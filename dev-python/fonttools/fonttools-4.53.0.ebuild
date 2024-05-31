# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library for manipulating TrueType, OpenType, AFM and Type1 fonts"
HOMEPAGE="https://github.com/fonttools/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/a4/6e/681d39b71d5f0d6a1b1dc87d7333331f9961b5ab6a2ad6372d6cf3f8b04c/fonttools-4.53.0.tar.gz -> fonttools-4.53.0.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.53.0"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
