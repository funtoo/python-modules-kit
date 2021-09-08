# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="High level compatibility layer for multiple asynchronous event loop implementations"
HOMEPAGE=" https://pypi.org/project/anyio/"
SRC_URI="https://files.pythonhosted.org/packages/d9/f5/180f7b4c3b2fcdc79e8f71c71c7c3de575d5d08bdb27ee145d23801539db/anyio-3.3.1.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/sniffio-1.1[${PYTHON_USEDEP}]
	>=dev-python/idna-2.8[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	>=dev-python/curio-1.4[${PYTHON_USEDEP}]
	>=dev-python/trio-0.16[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/anyio-3.3.1"