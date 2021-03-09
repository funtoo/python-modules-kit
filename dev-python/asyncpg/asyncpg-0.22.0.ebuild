# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/fe/80/1bee9b4bd29faa8bd5c9b87f252788aeaea645d3e7860ffe1c3dfcc3eb0c/asyncpg-0.22.0.tar.gz"

DEPEND=""
RDEPEND=""
BDEPEND="dev-python/setuptools[$PYTHON_USEDEP]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/asyncpg-0.22.0"