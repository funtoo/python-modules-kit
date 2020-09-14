# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=bdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Asynchronous logging for python and asyncio"
HOMEPAGE="https://github.com/b2wdigital/aiologger"
SRC_URI="https://files.pythonhosted.org/packages/0f/5b/96c9c2868dda51755208f79ef8681654334698a112d27c5dca95ad3059c9/aiologger-0.6.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+aiofiles"

DEPEND="aiofiles? ( dev-python/aiofiles[${PYTHON_USEDEP}] )"