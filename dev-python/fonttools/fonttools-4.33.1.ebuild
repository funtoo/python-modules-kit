# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library for manipulating TrueType, OpenType, AFM and Type1 fonts"
HOMEPAGE="https://github.com/fonttools/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/f2/7f/415cc06c4278bbcda5c37b3e905fb1a2b9e63d93412c8531c12ca0628817/fonttools-4.33.1.zip
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/fonttools-4.33.1"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
