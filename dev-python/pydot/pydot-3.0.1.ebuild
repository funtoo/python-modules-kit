# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Graphviz's Dot"
HOMEPAGE="None https://pypi.org/project/pydot/"
SRC_URI="https://files.pythonhosted.org/packages/2c/aa/4cf0b17a070fb57798e8e0f5b1665abf5b2f19ee8ea47957aec2c37b9ced/pydot-3.0.1.tar.gz -> pydot-3.0.1.tar.gz
"

DEPEND=""
RDEPEND="
	media-gfx/graphviz
	>=dev-python/pyparsing-2.1.4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pydot-3.0.1"