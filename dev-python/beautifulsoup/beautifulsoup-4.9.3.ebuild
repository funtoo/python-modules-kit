# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Screen-scraping library"
HOMEPAGE="http://www.crummy.com/software/BeautifulSoup/bs4/ https://pypi.org/project/beautifulsoup4/"
SRC_URI="https://files.pythonhosted.org/packages/6b/c3/d31704ae558dcca862e4ee8e8388f357af6c9d9acb0cad4ba0fbbd350d9a/beautifulsoup4-4.9.3.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/soupsieve[${PYTHON_USEDEP}]
	dev-python/html5lib[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="4"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/beautifulsoup4-4.9.3"