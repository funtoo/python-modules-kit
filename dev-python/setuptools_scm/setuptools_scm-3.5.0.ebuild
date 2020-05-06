# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=rdepend
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Manage versions by scm tags via setuptools"
HOMEPAGE="https://github.com/pypa/setuptools_scm https://pypi.org/project/setuptools_scm/"
SRC_URI="https://files.pythonhosted.org/packages/b2/f7/60a645aae001a2e06cf4b8db2fba9d9f36b8fd378f10647e3e218b61b74b/setuptools_scm-3.5.0.tar.gz -> setuptools_scm-3.5.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

BDEPEND="
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/toml[${PYTHON_USEDEP}]
		dev-vcs/git
		dev-vcs/mercurial )"

python_prepare_all() {
	# network access
	sed -i -e 's:test_pip_download:_&:' testing/test_regressions.py || die
	# all fetch specific setuptools versions
	rm testing/test_setuptools_support.py || die
	distutils-r1_python_prepare_all
}

python_test() {
	distutils_install_for_testing
	pytest -v -v -x || die "Tests fail with ${EPYTHON}"
}