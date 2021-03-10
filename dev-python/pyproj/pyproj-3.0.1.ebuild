# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Python interface to the PROJ library"
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/2c/12/7a8cca32506747c05ffd5c6ba556cf8435754af0939906cbcc7fa5802ea3/pyproj-3.0.1.tar.gz"

DEPEND="
	>=sci-libs/proj-6.2.0:=
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>=sci-libs/proj-6.2.0:="

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyproj-3.0.1"

distutils_enable_sphinx docs dev-python/sphinx_rtd_theme
