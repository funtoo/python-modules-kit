# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python implementation of subunit test streaming protocol"
HOMEPAGE="http://launchpad.net/subunit https://pypi.org/project/python-subunit/"
SRC_URI="https://files.pythonhosted.org/packages/e4/57/c9d1130411945fee7de701366f238a6568d4e3a5ef8dda94cbdc63937c8d/python-subunit-1.4.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD-2 )"
KEYWORDS="*"

S="${WORKDIR}/python-subunit-1.4.0"