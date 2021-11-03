# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A modern CSS selector implementation for BeautifulSoup"
HOMEPAGE="https://github.com/facelessuser/soupsieve/ https://pypi.org/project/soupsieve/"
SRC_URI="https://files.pythonhosted.org/packages/2f/de/de0bdbe1330a12dd3d453460882b0519b0b7361a15e41bbfe9e9f0641c2f/soupsieve-2.3.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/soupsieve-2.3"