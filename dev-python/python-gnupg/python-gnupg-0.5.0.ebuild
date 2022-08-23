# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A Python wrapper for GnuPG"
HOMEPAGE="
	https://bitbucket.org/vinay.sajip/python-gnupg
	https://pypi.org/project/python-gnupg/
"
SRC_URI="https://files.pythonhosted.org/packages/e3/5c/5ff9877001616912a74f4377cd5f80925b31a678087800beae5b28bdb80e/python-gnupg-0.5.0.tar.gz -> python-gnupg-0.5.0.tar.gz"

KEYWORDS="*"
LICENSE="BSD"
SLOT="0"

RDEPEND="app-crypt/gnupg"
DEPEND="${RDEPEND}"

python_test() {
	# NO_EXTERNAL_TESTS must be enabled,
	# to disable all tests, which need internet access.
	NO_EXTERNAL_TESTS=1 "${PYTHON}" test_gnupg.py || die "Tests failed with ${EPYTHON}"
}