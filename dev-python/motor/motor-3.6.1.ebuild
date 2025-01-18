# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="None https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/c3/5d/be1f10b4ecc259503bcc9c5642a61b39715796343c771f3f61b84f79ee21/motor-3.6.1.tar.gz -> motor-3.6.1.tar.gz
"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.6.1"