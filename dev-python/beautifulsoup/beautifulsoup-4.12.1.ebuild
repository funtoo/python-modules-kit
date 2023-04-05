# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/beautifulsoup4/"
SRC_URI="https://files.pythonhosted.org/packages/4e/2f/63c252850ca79759810a988c0555cdfb67a89750743ae3943a1de106a5d2/beautifulsoup4-4.12.1.tar.gz -> beautifulsoup4-4.12.1.tar.gz
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
S="${WORKDIR}/beautifulsoup4-4.12.1"