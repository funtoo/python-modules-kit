# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION="sphinxcontrib-htmlhelp is a sphinx extension which renders HTML help files"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-htmlhelp/"
SRC_URI="https://files.pythonhosted.org/packages/eb/85/93464ac9bd43d248e7c74573d58a791d48c475230bcf000df2b2700b9027/sphinxcontrib-htmlhelp-2.0.0.tar.gz -> sphinxcontrib-htmlhelp-2.0.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib-htmlhelp-2.0.0"