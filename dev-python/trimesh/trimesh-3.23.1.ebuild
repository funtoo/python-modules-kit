# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Import, export, process, analyze and view triangular meshes."
HOMEPAGE="https://github.com/mikedh/trimesh https://pypi.org/project/trimesh/"
SRC_URI="https://files.pythonhosted.org/packages/62/40/ea7a9c7067e17bb107cd630f412e79bc0227646cc4bd46e89400890002da/trimesh-3.23.1.tar.gz -> trimesh-3.23.1.tar.gz
"

DEPEND=""
RDEPEND="
	sci-libs/scipy
	dev-libs/xxhash
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/colorlog[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/networkx[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/pycollada[${PYTHON_USEDEP}]
	dev-python/pyglet[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/rtree[${PYTHON_USEDEP}]
	dev-python/shapely[${PYTHON_USEDEP}]
	dev-python/svg-path[${PYTHON_USEDEP}]
	dev-python/sympy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/trimesh-3.23.1"