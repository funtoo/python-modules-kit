# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="https://github.com/pytest-dev/pytest-asyncio https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/3e/ed/ebeda980c5b22164ed85a2540acaaa3203ce02d5cd7ec956757a65574b39/pytest-asyncio-0.17.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/pytest-asyncio-0.17.0"