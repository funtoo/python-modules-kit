# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/shapely/shapely https://pypi.org/project/Shapely/"
SRC_URI="https://files.pythonhosted.org/packages/21/d0/82ea9573c9ba8e7a5709ee08681249ad25411382f6440f548981286f3b74/Shapely-1.8.5.tar.gz -> Shapely-1.8.5.tar.gz
"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Shapely-1.8.5"