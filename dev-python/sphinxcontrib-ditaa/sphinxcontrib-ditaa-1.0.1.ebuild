# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Ditaa Sphinx extension"
HOMEPAGE="https://pypi.org/project/sphinxcontrib-ditaa/"
SRC_URI="https://files.pythonhosted.org/packages/d9/9a/a0d41509f6335d4f275414c1b45f5be699db03a58599f63ed290b737ace6/sphinxcontrib-ditaa-1.0.1.tar.gz"

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