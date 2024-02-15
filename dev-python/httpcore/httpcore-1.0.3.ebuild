# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE=" https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/94/f1/47528a2f465b09c71caad95f5de1d7225e438cf3d1068d278362a4a6bc6a/httpcore-1.0.3.tar.gz -> httpcore-1.0.3.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/anyio[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/h2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/httpcore-1.0.3"