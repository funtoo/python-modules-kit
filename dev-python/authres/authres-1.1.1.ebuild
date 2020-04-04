# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2_7 python3_{6,7,8} pypy3 )

inherit distutils-r1

DESCRIPTION="Authentication-Results Headers generation and parsing"
HOMEPAGE="https://launchpad.net/authentication-results-python https://pypi.org/project/authres/"
SRC_URI="https://files.pythonhosted.org/packages/96/de/a3184660b81c0435db258c86a489a2986fa5214f91d4276186fdb1bb9120/authres-1.1.1.tar.gz -> authres-1.1.1.tar.gz"

LICENSE="Apache-2.0"
KEYWORDS="*"
SLOT="0"
IUSE=""

python_test() {
	"${EPYTHON}" -m doctest -v authres/tests ||
		die "Tests fail with ${EPYTHON}"
}