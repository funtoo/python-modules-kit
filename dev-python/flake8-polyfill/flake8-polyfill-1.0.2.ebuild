# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Polyfill package for Flake8 plugins"
HOMEPAGE="https://gitlab.com/pycqa/flake8"
SRC_URI="https://files.pythonhosted.org/packages/e6/67/1c26634a770db5c442e361311bee73cb3a177adb2eb3f7af8953cfd9f553/flake8-polyfill-1.0.2.tar.gz"
EGIT_REPO_URI="https://gitlab.com/pycqa/flake8-polyfill.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="dev-python/flake8[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( ${RDEPEND}
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

python_test() {
	py.test -v || die "Tests fail with ${EPYTHON}"
}