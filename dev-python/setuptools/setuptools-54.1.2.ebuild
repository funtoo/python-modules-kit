# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_SETUPTOOLS="no"

inherit distutils-r1

DESCRIPTION="Collection of extensions to Distutils"
HOMEPAGE="https://github.com/pypa/setuptools https://pypi.org/project/setuptools/
"
SRC_URI="https://files.pythonhosted.org/packages/b8/d3/155ebd29b6e34ac283614d3a1e7f476ffb93f535aa0d8b3647fa014815aa/setuptools-54.1.2.tar.gz"

DEPEND="
	app-arch/unzip
	test? (
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/pip[${PYTHON_USEDEP}]
		>=dev-python/pytest-3.7.0[${PYTHON_USEDEP}]
		<dev-python/pytest-4
		dev-python/pytest-fixture-config[${PYTHON_USEDEP}]
		dev-python/pytest-virtualenv[${PYTHON_USEDEP}]
		dev-python/wheel[${PYTHON_USEDEP}]
		virtual/python-futures[${PYTHON_USEDEP}]
	)"
RDEPEND="
	python_targets_python2_7? ( dev-python/setuptools-compat )"
PDEPEND=">=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]"
IUSE="test python_targets_python2_7"
RESTRICT="!test? ( test )"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/setuptools-54.1.2"

python_prepare_all() {
	# disable tests requiring a network connection
	rm setuptools/tests/test_packageindex.py || die
	# don't run integration tests
	rm setuptools/tests/test_integration.py || die
	distutils-r1_python_prepare_all
}

python_test() {
	# test_easy_install raises a SandboxViolation due to ${HOME}/.pydistutils.cfg
	# It tries to sandbox the test in a tempdir
	HOME="${PWD}" pytest -vv ${PN} || die "Tests failed under ${EPYTHON}"
}

python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
	# Remove any wrapper
	if [ "$PN"  == 'setuptools-compat' ]; then
		rm -rf ${D}/usr/bin
	fi

}
