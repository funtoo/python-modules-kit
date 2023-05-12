# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A minimal low-level HTTP client."
HOMEPAGE="https://github.com/encode/httpcore https://pypi.org/project/httpcore/"
SRC_URI="https://files.pythonhosted.org/packages/41/16/c809655d32fd93e688b9e2a1aaba1008118369d1eda00818f6f65eb509f8/httpcore-0.17.0.tar.gz -> httpcore-0.17.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/anyio[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/h2[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/httpcore-0.17.0"