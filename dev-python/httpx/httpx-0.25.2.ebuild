# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="The next generation HTTP client."
HOMEPAGE=" https://pypi.org/project/httpx/"
SRC_URI="https://files.pythonhosted.org/packages/8c/23/911d93a022979d3ea295f659fbe7edb07b3f4561a477e83b3a6d0e0c914e/httpx-0.25.2.tar.gz -> httpx-0.25.2.tar.gz"

DEPEND="dev-python/hatch-fancy-pypi-readme[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/httpcore[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/h2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/httpx-0.25.2"