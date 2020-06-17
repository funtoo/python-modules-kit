# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Extension providing a Sphinx domain for describing RESTful HTTP APIs"
HOMEPAGE="https://bitbucket.org/birkenfeld/sphinx-contrib/
	https://sphinxcontrib-httpdomain.readthedocs.io/en/stable/"
SRC_URI="https://files.pythonhosted.org/packages/b4/8d/8dbb8b6745d7a59084cf1b28837b32c9717c1b4a97333d5b25e25fa9813b/sphinxcontrib-httpdomain-1.7.0.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}