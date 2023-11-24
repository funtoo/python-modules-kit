# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="High level compatibility layer for multiple asynchronous event loop implementations"
HOMEPAGE=" https://pypi.org/project/anyio/"
SRC_URI="https://files.pythonhosted.org/packages/6e/57/075e07fb01ae2b740289ec9daec670f60c06f62d04b23a68077fd5d73fab/anyio-4.1.0.tar.gz -> anyio-4.1.0.tar.gz"

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
S="${WORKDIR}/anyio-4.1.0"