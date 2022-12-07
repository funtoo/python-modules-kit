# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/aleaxit/gmpy https://pypi.org/project/gmpy2/"
SRC_URI="https://files.pythonhosted.org/packages/c1/3f/b140ae8302005494cbafbec34cb1e23b381392eb5081741d2189ed6097a4/gmpy2-2.1.3.tar.gz -> gmpy2-2.1.3.tar.gz
"

DEPEND="
	dev-libs/mpc:=
	dev-libs/mpfr:=
	dev-libs/gmp:="
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gmpy2-2.1.3"