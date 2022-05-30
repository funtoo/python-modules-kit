# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="itertools and builtins for AsyncIO and mixed iterables"
HOMEPAGE="https://aioitertools.omnilib.dev https://pypi.org/project/aioitertools/"
SRC_URI="https://files.pythonhosted.org/packages/c2/9c/36180745f894257a50b1473fa348daf996b959d66f5985bbc868e44ef3ee/aioitertools-0.10.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/aioitertools-0.10.0"