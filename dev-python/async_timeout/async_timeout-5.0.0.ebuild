# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_P=${PN/_/-}-${PV}
DESCRIPTION="Timeout context manager for asyncio programs"
HOMEPAGE="https://github.com/aio-libs/async-timeout"
SRC_URI="https://files.pythonhosted.org/packages/61/1f/44d9efc904bbe4d9967433522b691a9c4f1e81c2c64fbe44bad63d5de646/async_timeout-5.0.0.tar.gz -> async_timeout-5.0.0.tar.gz"

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
	distutils-r1_python_prepare_all
}

python_test() {
	py.test -v || die "Tests fail with ${EPYTHON}"
}