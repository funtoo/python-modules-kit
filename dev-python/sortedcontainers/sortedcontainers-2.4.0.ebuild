# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Sorted Containers -- Sorted List, Sorted Dict, Sorted Set"
HOMEPAGE="http://www.grantjenks.com/docs/sortedcontainers/ https://pypi.org/project/sortedcontainers/"
SRC_URI="https://files.pythonhosted.org/packages/e8/c4/ba2f8066cceb6f23394729afe52f3bf7adec04bf9ed2c820b39e19299111/sortedcontainers-2.4.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/sortedcontainers-2.4.0"