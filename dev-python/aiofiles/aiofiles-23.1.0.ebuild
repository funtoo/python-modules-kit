# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=bdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="File support for asyncio"
HOMEPAGE="https://github.com/Tinche/aiofiles"
SRC_URI="https://files.pythonhosted.org/packages/40/a0/07be94aecba162ed5147359f9883e82afd2ac13aed33678a008fc8c36f8b/aiofiles-23.1.0.tar.gz -> aiofiles-23.1.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
