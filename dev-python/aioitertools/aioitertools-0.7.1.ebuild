# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="itertools and builtins for AsyncIO and mixed iterables"
HOMEPAGE="https://aioitertools.omnilib.dev https://pypi.org/project/aioitertools/"
SRC_URI="https://files.pythonhosted.org/packages/dc/a0/f149e54ea082e5f4ae71c68e8e72cab8749283329a7c2747336ef7b68dc0/aioitertools-0.7.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/aioitertools-0.7.1"