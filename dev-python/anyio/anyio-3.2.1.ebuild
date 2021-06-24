# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/ff/b7/9730df0dd70a2d77bc03fb5e3dca62735fc6b39719a62eb7785ef070d07e/anyio-3.2.1.tar.gz
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
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/anyio-3.2.1"