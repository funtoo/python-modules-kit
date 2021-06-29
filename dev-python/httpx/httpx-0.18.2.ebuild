# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The next generation HTTP client."
HOMEPAGE="https://github.com/encode/httpx https://pypi.org/project/httpx/"
SRC_URI="https://files.pythonhosted.org/packages/c6/57/4db75d83f350813414c2f52318862f52ce29bc0ebaa97b71c9202af32d79/httpx-0.18.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/httpcore[${PYTHON_USEDEP}]
	dev-python/brotlipy[${PYTHON_USEDEP}]
	dev-python/rfc3986[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/httpx-0.18.2"