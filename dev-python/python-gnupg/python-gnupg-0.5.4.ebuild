# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A Python wrapper for GnuPG"
HOMEPAGE="
	https://bitbucket.org/vinay.sajip/python-gnupg
	https://pypi.org/project/python-gnupg/
"
SRC_URI="https://files.pythonhosted.org/packages/f1/3e/ba0dc69c9f4e0aeb24d93175230ef057c151790a7516012f61014918992d/python-gnupg-0.5.4.tar.gz -> python-gnupg-0.5.4.tar.gz"

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