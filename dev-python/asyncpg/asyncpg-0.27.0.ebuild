# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A database interface library designed specifically for PostgresSQL and Python/asyncio."
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/04/78/06b4979eb2b553a450fe38008353f5cba152a66de83c64b1639046e9ca0e/asyncpg-0.27.0.tar.gz -> asyncpg-0.27.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/asyncpg-0.27.0"