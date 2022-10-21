# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pytest-dev/pytest-asyncio https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/9e/8f/5a918ac4e2366b61156e16fa9bfb3be52401d81f5309efb1f4e04d99ac39/pytest-asyncio-0.20.1.tar.gz -> pytest-asyncio-0.20.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest-asyncio-0.20.1"