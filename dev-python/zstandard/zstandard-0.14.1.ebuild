# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="Zstandard Bindings for Python"
HOMEPAGE="https://pypi.org/project/zstandard/ https://github.com/indygreg/python-zstandard"
SRC_URI="https://files.pythonhosted.org/packages/30/bb/551cd25042138bdd2c36168b837c4ed6196da58fa1cfe3d9de8e70ac23dc/zstandard-0.14.1.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-python/cffi:=[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/hypothesis[${PYTHON_USEDEP}] )"

python_compile() {
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}

python_test() {
	esetup.py test
}