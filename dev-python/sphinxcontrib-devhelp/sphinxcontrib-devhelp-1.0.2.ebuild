# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_8+ pypy3 )

inherit distutils-r1

DESCRIPTION="Sphinx extension which outputs Devhelp documents"
HOMEPAGE="http://www.sphinx-doc.org"
SRC_URI="https://files.pythonhosted.org/packages/98/33/dc28393f16385f722c893cb55539c641c9aaec8d1bc1c15b69ce0ac2dbb3/sphinxcontrib-devhelp-1.0.2.tar.gz -> sphinxcontrib-devhelp-1.0.2.tar.gz"

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