# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Pure-Python HPACK header encoding"
HOMEPAGE="None https://pypi.org/project/hpack/"
SRC_URI="https://files.pythonhosted.org/packages/2c/48/71de9ed269fdae9c8057e5a4c0aa7402e8bb16f2c6e90b3aa53327b113f8/hpack-4.1.0.tar.gz -> hpack-4.1.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hpack-4.1.0"