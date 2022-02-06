# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="A pyunit extension for managing expensive test resources"
HOMEPAGE="https://launchpad.net/testresources"
SRC_URI="https://files.pythonhosted.org/packages/9d/57/8e3986cd95a80dd23195f599befa023eb85d031d2d870c47124fa5ccbf06/testresources-2.0.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/testtools[${PYTHON_USEDEP}]
		dev-python/fixtures[${PYTHON_USEDEP}]
	)"
RDEPEND=""

python_prepare_all() {
	sed \
		-e 's:testBasicSortTests:_&:g' \
		-i testresources/tests/test_optimising_test_suite.py || die
	distutils-r1_python_prepare_all
}

python_test() {
	nosetests --verbose || die "Tests failed under ${EPYTHON}"
}