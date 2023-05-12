# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A friendly Python library for async concurrency and I/O"
HOMEPAGE="https://github.com/python-trio/trio https://pypi.org/project/trio/"
SRC_URI="https://files.pythonhosted.org/packages/0b/b8/1b81d2149c3e2c25900d40b8e6c8d3ca502a3cc844b90c962b0854aaf3f3/trio-0.22.0.tar.gz -> trio-0.22.0.tar.gz
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
S="${WORKDIR}/trio-0.22.0"