# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A modern CSS selector implementation for BeautifulSoup"
HOMEPAGE="https://github.com/facelessuser/soupsieve/ https://pypi.org/project/soupsieve/"
SRC_URI="https://files.pythonhosted.org/packages/3b/3d/a7865440c393baf403899d79e724ad0a9805199962917745d9277f1db40e/soupsieve-2.3.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/soupsieve-2.3.2"