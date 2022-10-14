# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/shapely/shapely https://pypi.org/project/Shapely/"
SRC_URI="https://files.pythonhosted.org/packages/92/2e/a8bbe3c6b414c3c61c4b639ab16d5b1f9c4c4095817d417b503413e613c0/Shapely-1.8.5.post1.tar.gz -> Shapely-1.8.5.post1.tar.gz
"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Shapely-1.8.5.post1"