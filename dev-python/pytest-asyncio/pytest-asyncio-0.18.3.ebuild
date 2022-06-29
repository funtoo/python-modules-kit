# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="https://github.com/pytest-dev/pytest-asyncio https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/4d/73/769d29676fb36a36e5a57c198154171081aabcfd08112a24a4e3fb5c9f10/pytest-asyncio-0.18.3.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest-asyncio-0.18.3"