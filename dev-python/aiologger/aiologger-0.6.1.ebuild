# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=bdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Asynchronous logging for python and asyncio"
HOMEPAGE="https://github.com/b2wdigital/aiologger"
SRC_URI="https://files.pythonhosted.org/packages/d2/de/0ae09f9e73c2f73340296e1fec1b82884e3a3a488cb4381c48e6ce7031e0/aiologger-0.6.1.tar.gz -> aiologger-0.6.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+aiofiles"

DEPEND="aiofiles? ( dev-python/aiofiles[${PYTHON_USEDEP}] )"