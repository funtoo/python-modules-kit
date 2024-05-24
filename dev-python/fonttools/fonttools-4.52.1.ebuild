# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library for manipulating TrueType, OpenType, AFM and Type1 fonts"
HOMEPAGE="https://github.com/fonttools/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/50/03/9ed44d1844d60f8c923840aab8fb2ef769ba7e11deb25e0f91803f63a385/fonttools-4.52.1.tar.gz -> fonttools-4.52.1.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.52.1"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
