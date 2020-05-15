# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more"
HOMEPAGE="https://launchpad.net/python-fixtures https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/84/be/94ecbc3f2487bd14aa8b44852f498086219b7cc0c8250ee65a03e2c63119/fixtures-3.0.0.tar.gz -> fixtures-3.0.0.tar.gz"

LICENSE="|| ( Apache-2.0 BSD )"
SLOT="0"
KEYWORDS="*"
IUSE="test"

# nose not listed but provides coverage output of tests
# run of test files by python lacks any output except on fail
RDEPEND="
	>=dev-python/pbr-0.11[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	>=dev-python/testtools-0.9.22[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? ( dev-python/mock[${PYTHON_USEDEP}] )"
#DISTUTILS_IN_SOURCE_BUILD=1

python_test() {
	emake check
}