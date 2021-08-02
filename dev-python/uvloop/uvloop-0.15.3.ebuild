# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Fast implementation of asyncio event loop on top of libuv"
HOMEPAGE="http://github.com/MagicStack/uvloop https://pypi.org/project/uvloop/"
SRC_URI="https://files.pythonhosted.org/packages/41/49/d2cdac6450430f444d3df59ccd1abc8225ea51ffcecd9ac2e36b111074a4/uvloop-0.15.3.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/uvloop-0.15.3"