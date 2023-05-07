# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://sourceforge.net/p/ruamel-yaml/code/ci/default/tree https://pypi.org/project/ruamel.yaml/"
SRC_URI="https://files.pythonhosted.org/packages/60/0f/0c315497e321f54af5fe22f957f989001d231d4c1517c32fb26050dac0e2/ruamel.yaml-0.17.24.tar.gz -> ruamel.yaml-0.17.24.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/flake8[${PYTHON_USEDEP}] dev-python/pytest[${PYTHON_USEDEP}] dev-python/ruamel-std-pathlib[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ruamel.yaml-0.17.24"

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
