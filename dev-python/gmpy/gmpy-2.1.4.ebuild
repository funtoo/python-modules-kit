# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/aleaxit/gmpy https://pypi.org/project/gmpy2/"
SRC_URI="https://files.pythonhosted.org/packages/12/8c/2ec8c83138cd56a2b8e7ccb87095f9e6402c64aa26a2ff3dfddb232e8cc6/gmpy2-2.1.4.tar.gz -> gmpy2-2.1.4.tar.gz
"

DEPEND="
	dev-libs/mpc:=
	dev-libs/mpfr:=
	dev-libs/gmp:="
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gmpy2-2.1.4"