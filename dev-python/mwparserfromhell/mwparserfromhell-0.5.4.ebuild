# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Python MediaWiki parser"
HOMEPAGE="https://github.com/earwig/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/23/03/4fb04da533c7e237c0104151c028d8bff856293d34e51d208c529696fb79/mwparserfromhell-0.5.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="dev-python/setuptools[$PYTHON_USEDEP]"
RDEPEND=""