# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A friendly Python library for async concurrency and I/O"
HOMEPAGE="https://github.com/python-trio/trio https://pypi.org/project/trio/"
SRC_URI="https://files.pythonhosted.org/packages/0a/0f/e9c02a866e32d85fdead0f1c9425b31ba57b69dd08714770232089cc7839/trio-0.20.0.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
	dev-python/sortedcontainers[${PYTHON_USEDEP}]
	>=dev-python/async-generator-1.9[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/outcome[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"

S="${WORKDIR}/trio-0.20.0"