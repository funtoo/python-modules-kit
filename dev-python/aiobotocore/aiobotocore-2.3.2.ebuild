# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async client for aws services using botocore and aiohttp"
HOMEPAGE="https://github.com/aio-libs/aiobotocore https://pypi.org/project/aiobotocore/"
SRC_URI="https://files.pythonhosted.org/packages/b4/7e/60912dbc1087232539fc05ed21eff242a95656cf694826c95ab5e241ad23/aiobotocore-2.3.2.tar.gz
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

S="${WORKDIR}/aiobotocore-2.3.2"