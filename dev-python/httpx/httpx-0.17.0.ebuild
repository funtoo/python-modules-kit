# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/f5/bb/136616d6a7a2e9f91d3cb65b4f0674612aea21a832c18e5efa5872d689a2/httpx-0.17.0.tar.gz"

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