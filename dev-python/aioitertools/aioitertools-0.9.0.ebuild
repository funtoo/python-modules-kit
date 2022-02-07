# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="itertools and builtins for AsyncIO and mixed iterables"
HOMEPAGE="https://aioitertools.omnilib.dev https://pypi.org/project/aioitertools/"
SRC_URI="https://files.pythonhosted.org/packages/a7/c5/fe985d8eab13f168341a80bba99bdc2608f7788050f87722786a80583873/aioitertools-0.9.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/aioitertools-0.9.0"