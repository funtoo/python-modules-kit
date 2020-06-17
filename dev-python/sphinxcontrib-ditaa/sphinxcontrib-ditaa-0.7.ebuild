# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Ditaa Sphinx extension"
HOMEPAGE="https://pypi.org/project/sphinxcontrib-ditaa/"
SRC_URI="https://files.pythonhosted.org/packages/a1/75/a66e54c3c5ed5a724fe5ecf4e652a5e3f1c09931fa51c9e2542e74620130/sphinxcontrib-ditaa-0.7.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]
	media-gfx/ditaa"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}