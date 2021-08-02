# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python{2_7,3_{6,7,8}} )

inherit distutils-r1

SRC_URI="https://files.pythonhosted.org/packages/7f/e6/23e3f15ff29970dd64065a9a27bc809b1df727f7f9f6dfa3e36cf7975e58/tqdm-4.62.0.tar.gz"
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