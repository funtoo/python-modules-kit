# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Import, export, process, analyze and view triangular meshes."
HOMEPAGE="None https://pypi.org/project/trimesh/"
SRC_URI="https://files.pythonhosted.org/packages/b1/3c/dec395893b243f39b03d6d76c3f3378a39ad0c249bdbe3b4efb7f9ce50cf/trimesh-4.4.1.tar.gz -> trimesh-4.4.1.tar.gz"

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
S="${WORKDIR}/trimesh-4.4.1"