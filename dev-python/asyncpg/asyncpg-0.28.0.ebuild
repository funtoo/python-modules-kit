# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A database interface library designed specifically for PostgresSQL and Python/asyncio."
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/a9/81/d86b6d6b6d643d9d3ea3926078965ae321b3aa1734a45ce8dca726a455f3/asyncpg-0.28.0.tar.gz -> asyncpg-0.28.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/asyncpg-0.28.0"