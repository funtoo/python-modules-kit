# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE=" https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/e3/e3/f5244c84d7bdc149d99f9baa4313f197f7d14cfa1bfe1a6ac181e10cb3e2/motor-3.3.2.tar.gz -> motor-3.3.2.tar.gz"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.3.2"