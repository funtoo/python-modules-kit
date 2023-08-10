# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-qthelp is a sphinx extension which outputs QtHelp documents"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-qthelp/"
SRC_URI="https://files.pythonhosted.org/packages/43/7c/188a654c6eecc132b521e8718cc65d8364d89d18ceda2dcfaaecd5c6a5aa/sphinxcontrib_qthelp-1.0.5.tar.gz -> sphinxcontrib_qthelp-1.0.5.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_qthelp-1.0.5"