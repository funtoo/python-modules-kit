# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="gmpy2 interface to GMP, MPFR, and MPC for Python 3.7+"
HOMEPAGE="None https://pypi.org/project/gmpy2/"
SRC_URI="https://files.pythonhosted.org/packages/ef/b5/b9be2d42e5c5a09ba38057101410454ce958bd5574d37798200b95c7005b/gmpy2-2.2.0.tar.gz -> gmpy2-2.2.0.tar.gz"

DEPEND="
	dev-libs/mpc:=
	dev-libs/mpfr:=
	dev-libs/gmp:="
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gmpy2-2.2.0"