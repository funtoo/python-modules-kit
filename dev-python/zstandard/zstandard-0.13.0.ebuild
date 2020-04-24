# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="Zstandard Bindings for Python"
HOMEPAGE="https://pypi.org/project/zstandard/ https://github.com/indygreg/python-zstandard"
SRC_URI="https://files.pythonhosted.org/packages/b1/3d/b95e8beb3b2d165726c6105a728a1f59ae88d6bf1e3dc66375fbe149afcd/zstandard-0.13.0.tar.gz -> zstandard-0.13.0.tar.gz"

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