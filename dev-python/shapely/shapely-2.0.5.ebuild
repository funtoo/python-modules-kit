# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Manipulation and analysis of geometric objects"
HOMEPAGE="None https://pypi.org/project/shapely/"
SRC_URI="https://files.pythonhosted.org/packages/ad/99/c47247f4d688bbb5346df5ff1de5d9792b6d95cbbb2fd7b71f45901c1878/shapely-2.0.5.tar.gz -> shapely-2.0.5.tar.gz
"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/shapely-2.0.5"