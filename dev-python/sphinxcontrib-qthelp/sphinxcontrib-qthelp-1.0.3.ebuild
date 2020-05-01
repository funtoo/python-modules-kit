# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Sphinx extension which outputs QtHelp documents"
HOMEPAGE="http://www.sphinx-doc.org"
SRC_URI="https://files.pythonhosted.org/packages/b1/8e/c4846e59f38a5f2b4a0e3b27af38f2fcf904d4bfd82095bf92de0b114ebd/sphinxcontrib-qthelp-1.0.3.tar.gz -> sphinxcontrib-qthelp-1.0.3.tar.gz"

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