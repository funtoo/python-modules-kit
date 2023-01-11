# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://sourceforge.net/p/ruamel-std-pathlib/code/ci/default/tree https://pypi.org/project/ruamel.std.pathlib/"
SRC_URI="https://files.pythonhosted.org/packages/1e/ba/e40ee2cd6717fd19e8dc482a68946af0235e69ac04b4386d66e335fd8ded/ruamel.std.pathlib-0.11.0.tar.gz -> ruamel.std.pathlib-0.11.0.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/flake8[${PYTHON_USEDEP}] dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ruamel.std.pathlib-0.11.0"

python_install() {
	distutils-r1_python_install --single-version-externally-managed
	find "${ED}" -name '*.pth' -delete || die
}

python_test() {
	# This file produced by setup.py breaks finding system-wide installed ruamel.std.pthlib
	# due to shared namespace
	rm "${BUILD_DIR}/lib/ruamel/__init__.py" || die

	py.test -v _test/test_*.py || die
}
