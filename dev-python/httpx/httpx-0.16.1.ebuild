# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/28/1e/1726b212239edc78999874e0ba8c86baec99e5d36ccfae9911514feae80c/httpx-0.16.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/httpcore[${PYTHON_USEDEP}]
	dev-python/brotlipy[${PYTHON_USEDEP}]
	dev-python/rfc3986[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/httpx-${PV}"