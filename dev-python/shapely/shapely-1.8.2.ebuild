# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Geometric objects, predicates, and operations"
HOMEPAGE="https://github.com/shapely/shapely https://pypi.org/project/Shapely/"
SRC_URI="https://files.pythonhosted.org/packages/93/3c/cda77e57a08c49569de5bd90376c547bcb981420100adcb0f3770ed681b1/Shapely-1.8.2.tar.gz
"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Shapely-1.8.2"