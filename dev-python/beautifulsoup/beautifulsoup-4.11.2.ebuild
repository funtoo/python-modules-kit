# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.crummy.com/software/BeautifulSoup/bs4/ https://pypi.org/project/beautifulsoup4/"
SRC_URI="https://files.pythonhosted.org/packages/75/f8/de84282681c5a8307f3fff67b64641627b2652752d49d9222b77400d02b8/beautifulsoup4-4.11.2.tar.gz -> beautifulsoup4-4.11.2.tar.gz
"

DEPEND=""
RDEPEND="
	!dev-python/beautifulsoup:4
	dev-python/soupsieve[${PYTHON_USEDEP}]
	dev-python/html5lib[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/beautifulsoup4-4.11.2"