# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE="https://github.com/saghul/aiodns https://pypi.org/project/aiodns/"
SRC_URI="https://files.pythonhosted.org/packages/27/79/df72e25df0fdd9bf5a5ab068539731d27c5f2ae5654621ae0c92ceca94cf/aiodns-3.0.0.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/pycares-3[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/aiodns-3.0.0"