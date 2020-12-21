# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Python MediaWiki parser"
HOMEPAGE="https://github.com/earwig/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/4c/18/b30c6db8c2a3dcb5abf6a6666da39461e628512a63b74ffaf50322a2385e/mwparserfromhell-0.6.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="dev-python/setuptools[$PYTHON_USEDEP]"
RDEPEND=""