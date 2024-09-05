# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="itertools and builtins for AsyncIO and mixed iterables"
HOMEPAGE="None https://pypi.org/project/aioitertools/"
SRC_URI="https://files.pythonhosted.org/packages/06/de/38491a84ab323b47c7f86e94d2830e748780525f7a10c8600b67ead7e9ea/aioitertools-0.12.0.tar.gz -> aioitertools-0.12.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/aioitertools-0.12.0"