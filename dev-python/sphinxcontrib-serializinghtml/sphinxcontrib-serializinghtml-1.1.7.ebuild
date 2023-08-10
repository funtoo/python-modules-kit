# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-serializinghtml is a sphinx extension which outputs "serialized" HTML files (json and pickle)"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-serializinghtml/"
SRC_URI="https://files.pythonhosted.org/packages/0d/1b/96acc54abc747faa2c9a64b05f12e043eee30de7933181a752cb458d1134/sphinxcontrib_serializinghtml-1.1.7.tar.gz -> sphinxcontrib_serializinghtml-1.1.7.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_serializinghtml-1.1.7"