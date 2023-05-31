# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Import, export, process, analyze and view triangular meshes."
HOMEPAGE="https://github.com/mikedh/trimesh https://pypi.org/project/trimesh/"
SRC_URI="https://files.pythonhosted.org/packages/78/c2/1606531673eb2ba1fa564565c6f68ddc1a48ca525d02d61b14eb3c7284be/trimesh-3.21.7.tar.gz -> trimesh-3.21.7.tar.gz
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
S="${WORKDIR}/trimesh-3.21.7"