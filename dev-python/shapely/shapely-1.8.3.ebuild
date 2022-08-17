# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/shapely/shapely https://pypi.org/project/Shapely/"
SRC_URI="https://files.pythonhosted.org/packages/35/6d/ef38757796e756377be74bcae96c6283b21365afc96796c9d2b6ff6ddbe7/Shapely-1.8.3.tar.gz -> Shapely-1.8.3.tar.gz
"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Shapely-1.8.3"