# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Async http client/server framework (asyncio)"
HOMEPAGE="https://github.com/aio-libs/aiohttp https://pypi.org/project/aiohttp/"
SRC_URI="https://files.pythonhosted.org/packages/99/f5/90ede947a3ce2d6de1614799f5fea4e93c19b6520a59dc5d2f64123b032f/aiohttp-3.7.4.post0.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>=dev-python/async_timeout-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/attrs-17.3.0[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.5.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.0[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/aiohttp-3.7.4.post0"