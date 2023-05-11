# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Simplified packaging of Python modules (core module)"
HOMEPAGE=" https://pypi.org/project/flit-core/"
SRC_URI="https://files.pythonhosted.org/packages/10/e5/be08751d07b30889af130cec20955c987a74380a10058e6e8856e4010afc/flit_core-3.8.0.tar.gz -> flit_core-3.8.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/flit_core-3.8.0"