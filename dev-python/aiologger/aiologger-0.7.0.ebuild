# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=bdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Asynchronous logging for python and asyncio"
HOMEPAGE="https://github.com/b2wdigital/aiologger"
SRC_URI="https://files.pythonhosted.org/packages/76/a8/ca4c00b319b877d29aa792cdd4ae3fb2a9f57268d94708a637abe9ae58c5/aiologger-0.7.0.tar.gz -> aiologger-0.7.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+aiofiles"

DEPEND="aiofiles? ( dev-python/aiofiles[${PYTHON_USEDEP}] )"