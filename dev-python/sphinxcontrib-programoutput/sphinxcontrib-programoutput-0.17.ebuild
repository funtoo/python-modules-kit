# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_8+ pypy3 )

inherit distutils-r1

DESCRIPTION="Extension to sphinx to include program output"
HOMEPAGE="https://sphinxcontrib-programoutput.readthedocs.io/en/latest/"
SRC_URI="https://files.pythonhosted.org/packages/49/fe/8a6d8763674b3d3814a6008a83eb8002b6da188710dd7f4654ec77b4a8ac/sphinxcontrib-programoutput-0.17.tar.gz -> sphinxcontrib-programoutput-0.17.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

IUSE="doc test"

RDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

python_compile_all() {
	if use doc; then
		python_setup
		esetup.py build_sphinx
		HTML_DOCS=( "${BUILD_DIR}/sphinx/html/." )
	fi
}

python_test() {
	esetup.py pytest || die
}

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}