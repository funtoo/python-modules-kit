# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Sphinx extension which outputs HTML help book"
HOMEPAGE="http://www.sphinx-doc.org"
SRC_URI="https://files.pythonhosted.org/packages/eb/85/93464ac9bd43d248e7c74573d58a791d48c475230bcf000df2b2700b9027/sphinxcontrib-htmlhelp-2.0.0.tar.gz -> sphinxcontrib-htmlhelp-2.0.0.tar.gz"

LICENSE="BSD-2"
SLOT="0"

KEYWORDS="*"

RDEPEND=""
PDEPEND="
	>=dev-python/sphinx-2.0[${PYTHON_USEDEP}]"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}