# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/fonttools/fonttools https://pypi.org/project/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/b9/d9/e5f7d061300db8880387974da222846c37218af05a3c3f18bcf7c42984f5/fonttools-4.39.1.zip -> fonttools-4.39.1.zip
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.39.1"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
