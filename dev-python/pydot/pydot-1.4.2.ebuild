# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to Graphviz's Dot"
HOMEPAGE="https://github.com/pydot/pydot https://pypi.org/project/pydot/"
SRC_URI="https://files.pythonhosted.org/packages/13/6e/916cdf94f9b38ae0777b254c75c3bdddee49a54cc4014aac1460a7a172b3/pydot-1.4.2.tar.gz -> pydot-1.4.2.tar.gz
"

DEPEND=""
RDEPEND="
	media-gfx/graphviz
	>=dev-python/pyparsing-2.1.4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pydot-1.4.2"