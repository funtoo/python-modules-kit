# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pyproj4/pyproj https://pypi.org/project/pyproj/"
SRC_URI="https://files.pythonhosted.org/packages/c0/fc/fd53e45d2ad5862d32ab8614e70c3c1f52a8e0d8bd243ee6a23b6a481b4a/pyproj-3.4.1.tar.gz -> pyproj-3.4.1.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>=sci-libs/proj-6.2.0:="

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyproj-3.4.1"

distutils_enable_sphinx docs dev-python/sphinx_rtd_theme
