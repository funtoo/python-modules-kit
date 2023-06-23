# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="https://github.com/mongodb/motor/ https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/a7/cd/1663634a5299d9803b0ee750cc5f0b1c091b55a1fff30692dee2985afadc/motor-3.2.0.tar.gz -> motor-3.2.0.tar.gz
"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.2.0"