# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_PN="Werkzeug"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Collection of various utilities for WSGI applications"
HOMEPAGE="http://werkzeug.pocoo.org/ https://pypi.org/project/Werkzeug/ https://github.com/pallets/werkzeug"
SRC_URI="https://files.pythonhosted.org/packages/dc/db/598e5986e8cc1eeb14ecff2c1590dc59f95153cdb757196b0980b3ad0763/Werkzeug-2.2.0.tar.gz -> Werkzeug-2.2.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/${MY_P}"

RDEPEND="dev-python/simplejson[${PYTHON_USEDEP}]"
DEPEND="
	test? (
		dev-python/click[${PYTHON_USEDEP}]
		dev-python/cryptography[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}]
		dev-python/pytest-timeout[${PYTHON_USEDEP}]
		dev-python/pytest-xprocess[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest

src_prepare() {
	# this test is very unreliable; it may fail randomly depending
	# on installed packages
	sed -i -e 's:test_no_memory_leak_from_Rule_builder:_&:' \
		tests/test_routing.py || die

	distutils-r1_src_prepare
}

python_test() {
	pytest -vv -x -p no:httpbin tests/test_routing.py || die "Tests fail with ${EPYTHON}"
}