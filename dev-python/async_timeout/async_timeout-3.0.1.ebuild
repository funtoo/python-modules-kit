# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_P=${PN/_/-}-${PV}
DESCRIPTION="Timeout context manager for asyncio programs"
HOMEPAGE="https://github.com/aio-libs/async-timeout"
SRC_URI="https://files.pythonhosted.org/packages/a1/78/aae1545aba6e87e23ecab8d212b58bb70e72164b67eb090b81bb17ad38e3/async-timeout-3.0.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"
S=${WORKDIR}/${MY_P}

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	test? ( dev-python/pytest-aiohttp[${PYTHON_USEDEP}] )"

python_prepare_all() {
	sed -i "s:, 'pytest-runner'::" -i setup.py || die
	# tests fail due to missing fixture when trying to load this file
	rm tests/conftest.py || die
	distutils-r1_python_prepare_all
}

python_test() {
	py.test -v || die "Tests fail with ${EPYTHON}"
}