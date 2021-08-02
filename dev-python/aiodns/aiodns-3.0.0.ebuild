# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} pypy3 )

inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE="https://github.com/saghul/aiodns/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
# Tests fail with network-sandbox, since they try to resolve google.com
RESTRICT="test"

RDEPEND=">=dev-python/pycares-3[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND} dev-python/setuptools[${PYTHON_USEDEP}]"
SRC_URI="https://files.pythonhosted.org/packages/27/79/df72e25df0fdd9bf5a5ab068539731d27c5f2ae5654621ae0c92ceca94cf/aiodns-3.0.0.tar.gz"

python_test() {
	"${EPYTHON}" tests.py -v || die
}