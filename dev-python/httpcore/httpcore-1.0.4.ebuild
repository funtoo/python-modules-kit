# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE=" https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/03/9d/2055e6b65592d3a485a1141761ba7047674bbe085cebac0988b30e93c9e6/httpcore-1.0.4.tar.gz -> httpcore-1.0.4.tar.gz"

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
S="${WORKDIR}/httpcore-1.0.4"