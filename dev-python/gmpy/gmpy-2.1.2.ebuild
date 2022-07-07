# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/aleaxit/gmpy https://pypi.org/project/gmpy2/"
SRC_URI="https://files.pythonhosted.org/packages/80/02/a9f4de927fc1677a68b40d966f9ea757b58997cfe06cf305ffa2159979ce/gmpy2-2.1.2.tar.gz
"

DEPEND="
	dev-libs/mpc:=
	dev-libs/mpfr:=
	dev-libs/gmp:="
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gmpy2-2.1.2"