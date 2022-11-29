# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/aio-libs/aiobotocore https://pypi.org/project/aiobotocore/"
SRC_URI="https://files.pythonhosted.org/packages/0c/b5/77915fcab26ed69dcae2d45832e0eff1c923e1941e8a7ca3c66c13527d0b/aiobotocore-2.4.1.tar.gz -> aiobotocore-2.4.1.tar.gz
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
S="${WORKDIR}/aiobotocore-2.4.1"