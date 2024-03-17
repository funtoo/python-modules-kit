# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A friendly Python library for async concurrency and I/O"
HOMEPAGE=" https://pypi.org/project/trio/"
SRC_URI="https://files.pythonhosted.org/packages/b4/51/4f5ae37ec58768b9c30e5bc5b89431a7baf3fa9d0dda98983af6ef55eb47/trio-0.25.0.tar.gz -> trio-0.25.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/attrs-20.1.0[${PYTHON_USEDEP}]
	dev-python/sortedcontainers[${PYTHON_USEDEP}]
	>=dev-python/async-generator-1.9[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/outcome[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/exceptiongroup[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"
S="${WORKDIR}/trio-0.25.0"