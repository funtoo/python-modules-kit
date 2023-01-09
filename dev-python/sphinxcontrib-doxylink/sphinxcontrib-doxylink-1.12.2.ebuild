# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Extension to link to external Doxygen API documentation"
HOMEPAGE="https://pypi.org/project/sphinxcontrib-doxylink/ https://pythonhosted.org/sphinxcontrib-doxylink/ https://bitbucket.org/birkenfeld/sphinx-contrib"
SRC_URI="https://files.pythonhosted.org/packages/cf/d6/a251c7c7f2d98de3c278b220742c1f978bb96e5dc62147ae0821c410f3d4/sphinxcontrib-doxylink-1.12.2.tar.gz -> sphinxcontrib-doxylink-1.12.2.tar.gz"

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