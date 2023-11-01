# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION="A sphinx extension which renders display math in HTML via JavaScript"
HOMEPAGE="http://sphinx-doc.org/ https://pypi.org/project/sphinxcontrib-jsmath/"
SRC_URI="https://files.pythonhosted.org/packages/b2/e8/9ed3830aeed71f17c026a07a5097edcf44b692850ef215b161b8ad875729/sphinxcontrib-jsmath-1.0.1.tar.gz -> sphinxcontrib-jsmath-1.0.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib-jsmath-1.0.1"