# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="ASN.1 types and codecs"
HOMEPAGE="https://github.com/etingof/pyasn1 https://pypi.org/project/pyasn1/"
SRC_URI="https://files.pythonhosted.org/packages/a4/db/fffec68299e6d7bad3d504147f9094830b704527a7fc098b721d38cc7fa7/pyasn1-0.4.8.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/pyasn1-0.4.8"