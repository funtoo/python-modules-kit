# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/f2/f4/de27c93aaaf6f9b24334a320b40d9d6df379c4d707e777bde07aedc83c35/httpx-0.17.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/httpcore[${PYTHON_USEDEP}]
	dev-python/brotlipy[${PYTHON_USEDEP}]
	dev-python/rfc3986[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/httpx-0.17.1"