# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Async http client/server framework (asyncio)"
HOMEPAGE="https://github.com/aio-libs/aiohttp https://pypi.org/project/aiohttp/"
SRC_URI="https://files.pythonhosted.org/packages/48/1a/ba9542a545aed4b0b6ef128561f68dd3c2812ff5abfa9ed5b96547a728ea/aiohttp-3.8.0.tar.gz
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>dev-python/async_timeout-3[${PYTHON_USEDEP}]
	>dev-python/attrs-17.3.0[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	>dev-python/multidict-4.5.0[${PYTHON_USEDEP}]
	>dev-python/yarl-1[${PYTHON_USEDEP}]
	dev-python/idna-ssl[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/aiosignal[${PYTHON_USEDEP}]
	dev-python/aiodns[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/aiohttp-3.8.0"

src_prepare() {
	default
	rm ${S}/examples/__init__.py
}
