# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/soupsieve/"
SRC_URI="https://files.pythonhosted.org/packages/e1/25/a3005eedafb34e1258458e8a4b94900a60a41a2b4e459e0e19631648a2a0/soupsieve-2.3.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/soupsieve-2.3.1"