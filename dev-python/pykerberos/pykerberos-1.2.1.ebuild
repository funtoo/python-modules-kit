# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="High-level interface to Kerberos"
HOMEPAGE=" https://pypi.org/project/pykerberos/"
SRC_URI="https://files.pythonhosted.org/packages/9a/b8/1ec56b6fa8a2e2a81420bd3d90e70b59fc83f6b857fb2c2c37accddc8be3/pykerberos-1.2.1.tar.gz
"

DEPEND=""
RDEPEND="app-crypt/mit-krb5"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="ASL 2.0"
KEYWORDS="*"

S="${WORKDIR}/pykerberos-1.2.1"