# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python{2_7,3_{6,7,8}} )

inherit distutils-r1

SRC_URI="https://files.pythonhosted.org/packages/48/a9/06793044a329e3d80489d5bf2153924f9463c08beec7f8ce4d20efd3cfbc/tqdm-4.62.1.tar.gz"
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