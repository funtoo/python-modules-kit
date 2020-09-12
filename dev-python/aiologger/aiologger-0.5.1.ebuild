# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=bdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Asynchronous logging for python and asyncio"
HOMEPAGE="https://github.com/b2wdigital/aiologger"
SRC_URI="https://files.pythonhosted.org/packages/37/b9/c9f1ec4900dd8c41972db5f904caa6598e5058f35f4791d16efc8d113e81/aiologger-0.5.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+aiofiles"

DEPEND="aiofiles? ( dev-python/aiofiles[${PYTHON_USEDEP}] )"