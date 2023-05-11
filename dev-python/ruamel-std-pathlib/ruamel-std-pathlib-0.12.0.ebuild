# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="improvements over the standard pathlib module"
HOMEPAGE="https://sourceforge.net/p/ruamel-std-pathlib/code/ci/default/tree https://pypi.org/project/ruamel.std.pathlib/"
SRC_URI="https://files.pythonhosted.org/packages/bc/d2/b2d999248a2428b8d74f7e1a8bfeccdc789ff58d9b6b53447ab42af94d80/ruamel.std.pathlib-0.12.0.tar.gz -> ruamel.std.pathlib-0.12.0.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/flake8[${PYTHON_USEDEP}] dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ruamel.std.pathlib-0.12.0"

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
