# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

DISTUTILS_USE_PEP517=flit
inherit distutils-r1

MY_P=${PN/-/.}-${PV}
S=${WORKDIR}/${MY_P}
DESCRIPTION="Sphinx extension which outputs Apple help book"
HOMEPAGE="http://www.sphinx-doc.org"
SRC_URI="https://files.pythonhosted.org/packages/00/45/1973a8e0fae5a9b4fafd6c0523164622f8166d4f099c6616e6654bc07979/sphinxcontrib.applehelp-1.0.3.tar.gz -> sphinxcontrib.applehelp-1.0.3.tar.gz"

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