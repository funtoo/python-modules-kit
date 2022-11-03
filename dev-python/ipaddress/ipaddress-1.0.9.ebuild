# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="IPv4/IPv6 manipulation library, backport of the ipaddress module"
HOMEPAGE="https://github.com/phihag/ipaddress"
SRC_URI="https://files.pythonhosted.org/packages/77/bd/ffaa273799a87bc640061e858abd04086783e9ed1d5b2c48981ca86f41ca/ipaddress-1.0.9.tar.gz -> ipaddress-1.0.9.tar.gz"

SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_test() {
	"${PYTHON}" test_ipaddress.py || die
}