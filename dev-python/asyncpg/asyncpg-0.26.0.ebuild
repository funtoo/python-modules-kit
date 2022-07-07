# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/MagicStack/asyncpg https://pypi.org/project/asyncpg/"
SRC_URI="https://files.pythonhosted.org/packages/e4/57/0a4c4d3f2307b12f633b28c370669d6115a1780416310ec536f01ace09ad/asyncpg-0.26.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/asyncpg-0.26.0"