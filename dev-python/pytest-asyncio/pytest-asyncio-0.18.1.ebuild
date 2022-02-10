# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="https://github.com/pytest-dev/pytest-asyncio https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/ed/e6/aea6b1b0203aea401693ed95b0c79fa9b67c2fd222cacf4fc7826baa7ad3/pytest-asyncio-0.18.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/pytest-asyncio-0.18.1"