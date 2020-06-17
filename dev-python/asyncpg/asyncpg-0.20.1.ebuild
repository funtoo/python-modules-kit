# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/fd/b0/f55fd9262faca7e93af3b4f5f677a16dcc380545d1ae76124f09bc6b58ac/asyncpg-0.20.1.tar.gz"

DEPEND=""
BDEPEND="dev-python/setuptools[$PYTHON_USEDEP]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/asyncpg-${PV}"

