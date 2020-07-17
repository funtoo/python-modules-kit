# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=bdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Asynchronous logging for python and asyncio"
HOMEPAGE="https://github.com/b2wdigital/aiologger"
SRC_URI="https://files.pythonhosted.org/packages/74/c1/ee5d896fe5bd2199c27a70027e429001bf3a2e3f65de34fa120d02e33a1e/aiologger-0.5.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+aiofiles"

DEPEND="aiofiles? ( dev-python/aiofiles[${PYTHON_USEDEP}] )"