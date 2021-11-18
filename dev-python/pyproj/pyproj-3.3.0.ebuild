# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to the PROJ library"
HOMEPAGE="https://github.com/pyproj4/pyproj https://pypi.org/project/pyproj/"
SRC_URI="https://files.pythonhosted.org/packages/e4/36/c151d658ca1a1ccfd5ed82ac3b41d13c36cbd0687da97ac1beaeb3381fa8/pyproj-3.3.0.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>=sci-libs/proj-6.2.0:="

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyproj-3.3.0"

distutils_enable_sphinx docs dev-python/sphinx_rtd_theme
