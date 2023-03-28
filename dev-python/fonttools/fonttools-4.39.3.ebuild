# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/fonttools/fonttools https://pypi.org/project/fonttools/"
SRC_URI="https://files.pythonhosted.org/packages/39/d7/ab05ae34dd57dd657e492d95ce7ec6bfebfb3bfcdc7316660ac5a13fcfee/fonttools-4.39.3.zip -> fonttools-4.39.3.zip
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/fs[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/fonttools-4.39.3"

src_configure() {
	DISTUTILS_ARGS=( --with-cython )
}
