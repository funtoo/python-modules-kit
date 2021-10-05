# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async client for aws services using botocore and aiohttp"
HOMEPAGE="https://github.com/aio-libs/aiobotocore https://pypi.org/project/aiobotocore/"
SRC_URI="https://files.pythonhosted.org/packages/4a/4c/2dc35d03068e964c20fac70cd954d1298d27d49c17dc478b136ede988ec7/aiobotocore-1.4.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/aioitertools[${PYTHON_USEDEP}]
	dev-python/botocore[${PYTHON_USEDEP}]
	dev-python/wrapt[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/aiobotocore-1.4.2"