# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE=" https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/44/99/58df51cf655f30d64009d838447ff695746865d5e9612b14d28866b30614/motor-3.3.0.tar.gz -> motor-3.3.0.tar.gz
"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.3.0"