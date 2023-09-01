# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE=" https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/c5/3a/7bc74c77b07162bdbdf7792d6a75a763d7d29a58e6eab32dcff53f7b4fc6/motor-3.3.1.tar.gz -> motor-3.3.1.tar.gz
"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.3.1"