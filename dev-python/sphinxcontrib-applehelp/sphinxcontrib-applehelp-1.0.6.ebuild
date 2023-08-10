# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-applehelp is a Sphinx extension which outputs Apple help books"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-applehelp/"
SRC_URI="https://files.pythonhosted.org/packages/e5/8c/6111eb770597b1eb3cacb704d45cb40767a74270a8a89a2ef0c94c4e7381/sphinxcontrib_applehelp-1.0.6.tar.gz -> sphinxcontrib_applehelp-1.0.6.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_applehelp-1.0.6"