# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/shapely/shapely https://pypi.org/project/Shapely/"
SRC_URI="https://files.pythonhosted.org/packages/b5/9a/625d4fc91ef85873801a16700840786117df4c016162a4532c998a7fe6bc/Shapely-1.8.4.tar.gz -> Shapely-1.8.4.tar.gz
"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Shapely-1.8.4"