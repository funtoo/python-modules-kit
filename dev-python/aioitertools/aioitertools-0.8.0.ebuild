# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="itertools and builtins for AsyncIO and mixed iterables"
HOMEPAGE="https://aioitertools.omnilib.dev https://pypi.org/project/aioitertools/"
SRC_URI="https://files.pythonhosted.org/packages/78/f7/ea3904946e33c6e2799b5303e11ae5f43cf6b08dda58c8db8d759e34c3fb/aioitertools-0.8.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/aioitertools-0.8.0"