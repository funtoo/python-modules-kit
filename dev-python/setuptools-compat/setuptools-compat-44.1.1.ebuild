# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Collection of extensions to Distutils"
HOMEPAGE="https://github.com/pypa/setuptools https://pypi.org/project/setuptools/
"
SRC_URI="https://files.pythonhosted.org/packages/b2/40/4e00501c204b457f10fe410da0c97537214b2265247bc9a5bc6edd55b9e4/setuptools-44.1.1.zip -> setuptools-44.1.1.zip"

DEPEND="app-arch/unzip
test? (
  dev-python/mock[${PYTHON_USEDEP}]
  dev-python/pip[${PYTHON_USEDEP}]
  >=dev-python/pytest-3.7.0[${PYTHON_USEDEP}]
  <dev-python/pytest-4
  dev-python/pytest-fixture-config[${PYTHON_USEDEP}]
  dev-python/pytest-virtualenv[${PYTHON_USEDEP}]
  dev-python/wheel[${PYTHON_USEDEP}]
  virtual/python-futures[${PYTHON_USEDEP}]
)
"
RDEPEND=" !<dev-python/setuptools-47"
PDEPEND=">=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]"
IUSE="test"
RESTRICT="!test? ( test )"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/setuptools-${PV}"


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
