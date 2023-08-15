# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-serializinghtml is a sphinx extension which outputs "serialized" HTML files (json and pickle)"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-serializinghtml/"
SRC_URI="https://files.pythonhosted.org/packages/a0/a3/4bd9d8c5c97312bf46b059bcf76eab42ce6ffb12560b7ce9a247e2e524a3/sphinxcontrib_serializinghtml-1.1.8.tar.gz -> sphinxcontrib_serializinghtml-1.1.8.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_serializinghtml-1.1.8"