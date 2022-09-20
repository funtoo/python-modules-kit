# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/fonttools/fonttools https://pypi.org/project/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/c1/0d/d41b9c2295e1896f4c89e6b213790eee8e8e641b3e9709518f2bddcdeffa/fonttools-4.37.3.zip -> fonttools-4.37.3.zip
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.37.3"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
