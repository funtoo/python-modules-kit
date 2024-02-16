# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Manipulation and analysis of geometric objects"
HOMEPAGE=" https://pypi.org/project/shapely/"
SRC_URI="https://files.pythonhosted.org/packages/36/8f/03929218f8d7003c3eafa5ffad1fb3f185459d336fa9cc31d3e67f442f97/shapely-2.0.3.tar.gz -> shapely-2.0.3.tar.gz"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/shapely-2.0.3"