# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="An asyncio PostgreSQL driver"
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/97/b0/acacd8496670b24bad90b92c105fd2f66e83051bf5e23b978a059e5f9608/asyncpg-0.23.0.tar.gz
"

DEPEND=""
BDEPEND="dev-python/setuptools[$PYTHON_USEDEP]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/asyncpg-0.23.0"