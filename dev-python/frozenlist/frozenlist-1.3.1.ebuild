# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/aio-libs/frozenlist https://pypi.org/project/frozenlist/"
SRC_URI="https://files.pythonhosted.org/packages/8a/95/229aacfe85daa28e2792481a98c336bc30d3729533e6a44db537880aca21/frozenlist-1.3.1.tar.gz -> frozenlist-1.3.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/frozenlist-1.3.1"