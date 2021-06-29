# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Fast implementation of asyncio event loop on top of libuv"
HOMEPAGE="http://github.com/MagicStack/uvloop https://pypi.org/project/uvloop/"
SRC_URI="https://files.pythonhosted.org/packages/44/6e/0cb292e4e6ee1382e2ede458f90c94b4f990b261f738403ac45cb8183bc2/uvloop-0.15.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/uvloop-0.15.2"