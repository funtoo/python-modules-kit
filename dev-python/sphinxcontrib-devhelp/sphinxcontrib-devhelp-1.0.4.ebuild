# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-devhelp is a sphinx extension which outputs Devhelp documents"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-devhelp/"
SRC_URI="https://files.pythonhosted.org/packages/52/14/35164e8fd79b8ec7f9570984ab4af38f2ec728084df7ddd3c4b045e6b63a/sphinxcontrib_devhelp-1.0.4.tar.gz -> sphinxcontrib_devhelp-1.0.4.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_devhelp-1.0.4"