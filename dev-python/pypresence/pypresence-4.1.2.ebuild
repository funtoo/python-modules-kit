# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="A Discord RPC library in Python"
HOMEPAGE="https://qwertyquerty.github.io/pypresence/html/index.html"
SRC_URI="https://files.pythonhosted.org/packages/e2/02/6b9610c9ef2e2a01308049e7e22e90cfd18897e83cd8a917f83737b94600/pypresence-4.1.2.tar.gz"

DEPEND=""
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pypresence-${PV}"