# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A database interface library designed specifically for PostgresSQL and Python/asyncio."
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/2f/4c/7c991e080e106d854809030d8584e15b2e996e26f16aee6d757e387bc17d/asyncpg-0.30.0.tar.gz -> asyncpg-0.30.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/asyncpg-0.30.0"