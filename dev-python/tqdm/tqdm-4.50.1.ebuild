# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python{2_7,3_{6,7,8}} )

inherit distutils-r1

SRC_URI="https://files.pythonhosted.org/packages/47/e2/60281191b978c59bca6fd0d1c02970ce16774e4a3f112bfcfe9f1a908ae1/tqdm-4.50.1.tar.gz"
KEYWORDS="*"

DESCRIPTION="Add a progress meter to your loops in a second"
HOMEPAGE="https://github.com/tqdm/tqdm"

LICENSE="MIT"
SLOT="0"
IUSE="examples"

RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
BDEPEND="${RDEPEND}"

distutils_enable_tests nose

python_prepare_all() {
	sed -r \
		-e "s:'nose'(,[[:space:]]*|)::" \
		-e "s:'flake8'(,[[:space:]]*|)::" \
		-e "s:'coverage'(,[[:space:]]*|)::" \
		-i setup.py

	distutils-r1_python_prepare_all
}

python_test() {
	# tests_main.py requires the package to be installed
	distutils_install_for_testing
	# Skip unpredictable performance tests
	nosetests tqdm -v --ignore 'tests_perf.py' \
		|| die "tests failed with ${EPYTHON}"
}

python_install() {
	doman "${BUILD_DIR}"/lib/tqdm/tqdm.1
	rm "${BUILD_DIR}"/lib/tqdm/tqdm.1 || die
	distutils-r1_python_install --skip-build
}

python_install_all() {
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
	distutils-r1_python_install_all
}