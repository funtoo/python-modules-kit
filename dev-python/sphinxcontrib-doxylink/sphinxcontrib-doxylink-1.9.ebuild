# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Extension to link to external Doxygen API documentation"
HOMEPAGE="https://pypi.org/project/sphinxcontrib-doxylink/ https://pythonhosted.org/sphinxcontrib-doxylink/ https://bitbucket.org/birkenfeld/sphinx-contrib"
SRC_URI="https://files.pythonhosted.org/packages/e3/90/9a86be97967a2fdf4f57396f89b5616d82bbc206fb8962a963586d96862f/sphinxcontrib-doxylink-1.9.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/sphinx-1.0[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	# any better idea ?
	rm -rf tests
	distutils-r1_src_prepare
}

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}