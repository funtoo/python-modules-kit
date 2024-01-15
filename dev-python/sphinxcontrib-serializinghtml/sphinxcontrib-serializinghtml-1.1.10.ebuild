# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-serializinghtml is a sphinx extension which outputs 'serialized' HTML files (json and pickle)"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-serializinghtml/"
SRC_URI="https://files.pythonhosted.org/packages/54/13/8dd7a7ed9c58e16e20c7f4ce8e4cb6943eb580955236d0c0d00079a73c49/sphinxcontrib_serializinghtml-1.1.10.tar.gz -> sphinxcontrib_serializinghtml-1.1.10.tar.gz"

DEPEND=""
RDEPEND="dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_serializinghtml-1.1.10"