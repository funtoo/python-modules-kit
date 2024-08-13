# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Wrappers to build Python packages using PEP 517 hooks"
HOMEPAGE="https://github.com/pypa/pep517 https://pypi.org/project/pep517/"
SRC_URI="https://files.pythonhosted.org/packages/44/d7/8f5d2be1a5fed3b0b5ccd3e800153c0f4dd84c2a688d25bce0bb0cb1f87f/pep517-0.13.1.tar.gz -> pep517-0.13.1.tar.gz
"

DEPEND="dev-python/flit_core[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pep517-0.13.1"