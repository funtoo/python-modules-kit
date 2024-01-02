# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Graphviz's Dot"
HOMEPAGE=" https://pypi.org/project/pydot/"
SRC_URI="https://files.pythonhosted.org/packages/d7/2f/482fcbc389e180e7f8d7e7cb06bc5a7c37be6c57939dfb950951d97f2722/pydot-2.0.0.tar.gz -> pydot-2.0.0.tar.gz"

DEPEND=""
RDEPEND="
	media-gfx/graphviz
	>=dev-python/pyparsing-2.1.4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pydot-2.0.0"