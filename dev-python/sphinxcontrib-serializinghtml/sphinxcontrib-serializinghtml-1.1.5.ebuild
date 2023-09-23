# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION="sphinxcontrib-serializinghtml is a sphinx extension which outputs "serialized" HTML files (json and pickle)"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-serializinghtml/"
SRC_URI="https://files.pythonhosted.org/packages/b5/72/835d6fadb9e5d02304cf39b18f93d227cd93abd3c41ebf58e6853eeb1455/sphinxcontrib-serializinghtml-1.1.5.tar.gz -> sphinxcontrib-serializinghtml-1.1.5.tar.gz
"

DEPEND=""
RDEPEND="dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib-serializinghtml-1.1.5"