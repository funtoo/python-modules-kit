# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_8+ pypy3 )

inherit distutils-r1

DESCRIPTION="Extension providing a Sphinx domain for describing RESTful HTTP APIs"
HOMEPAGE="https://bitbucket.org/birkenfeld/sphinx-contrib/
	https://sphinxcontrib-httpdomain.readthedocs.io/en/stable/"
SRC_URI="https://files.pythonhosted.org/packages/be/ef/82d3cfafb7febce4f7df8dcf3cde9d072350b41066e05a4f559b4e9105d0/sphinxcontrib-httpdomain-1.8.1.tar.gz -> sphinxcontrib-httpdomain-1.8.1.tar.gz"

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