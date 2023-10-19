# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="YAML parser/emitter that supports roundtrip preservation of comments, seq/map flow style, and map key order"
HOMEPAGE="https://sourceforge.net/p/ruamel-yaml/code/ci/default/tree https://pypi.org/project/ruamel.yaml/"
SRC_URI="https://files.pythonhosted.org/packages/d3/dd/d6f2302a405cf7a5cd71f95ba9c39b1c3c901432aab1e0217cf25679c226/ruamel.yaml-0.17.39.tar.gz -> ruamel.yaml-0.17.39.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/flake8[${PYTHON_USEDEP}] dev-python/pytest[${PYTHON_USEDEP}] dev-python/ruamel-std-pathlib[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ruamel.yaml-0.17.39"

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
