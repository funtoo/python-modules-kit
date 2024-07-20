# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-qthelp is a sphinx extension which outputs QtHelp documents"
HOMEPAGE="None https://pypi.org/project/sphinxcontrib-qthelp/"
SRC_URI="https://files.pythonhosted.org/packages/a6/67/f5c7df6457315877202f370450acb28626d033822eec1e8163600612b4ef/sphinxcontrib_qthelp-1.0.8.tar.gz -> sphinxcontrib_qthelp-1.0.8.tar.gz"

DEPEND=""
RDEPEND="dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_qthelp-1.0.8"