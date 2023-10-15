# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Fast implementation of asyncio event loop on top of libuv"
HOMEPAGE=" https://pypi.org/project/uvloop/"
SRC_URI="https://files.pythonhosted.org/packages/80/f9/94d2d914d351c7d5db80e102fb0d7ab3bbb798e8322ab71a9fe9f8bfa31b/uvloop-0.18.0.tar.gz -> uvloop-0.18.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0 MIT"
KEYWORDS="*"
S="${WORKDIR}/uvloop-0.18.0"