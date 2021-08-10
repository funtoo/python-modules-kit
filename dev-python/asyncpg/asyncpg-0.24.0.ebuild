# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A database interface library designed specifically for PostgresSQL and Python/asyncio."
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/ba/29/cca39b99164d9e99a2b30c207e1a8fb682d062b39cef0f214a293bba113c/asyncpg-0.24.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/asyncpg-0.24.0"