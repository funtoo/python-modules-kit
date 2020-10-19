# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/08/4b/ae73e69c5ec9c45f6b07d3cb151ee8597ddb5c3f3b539cf4dfa4af13031d/asyncpg-0.21.0.tar.gz"

DEPEND=""
BDEPEND="dev-python/setuptools[$PYTHON_USEDEP]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/asyncpg-${PV}"