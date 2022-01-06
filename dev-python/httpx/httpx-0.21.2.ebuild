# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The next generation HTTP client."
HOMEPAGE="https://github.com/encode/httpx https://pypi.org/project/httpx/"
SRC_URI="https://files.pythonhosted.org/packages/cc/51/3dc36938b7476c8890a55e3bc594b72ce6d33a1ac45fc3a2dbb503d301aa/httpx-0.21.2.tar.gz
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

S="${WORKDIR}/httpx-0.21.2"