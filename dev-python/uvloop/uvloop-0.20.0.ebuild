# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Fast implementation of asyncio event loop on top of libuv"
HOMEPAGE="None https://pypi.org/project/uvloop/"
SRC_URI="https://files.pythonhosted.org/packages/bc/f1/dc9577455e011ad43d9379e836ee73f40b4f99c02946849a44f7ae64835e/uvloop-0.20.0.tar.gz -> uvloop-0.20.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0 MIT"
KEYWORDS="*"
S="${WORKDIR}/uvloop-0.20.0"