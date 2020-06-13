# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="Zstandard Bindings for Python"
HOMEPAGE="https://pypi.org/project/zstandard/ https://github.com/indygreg/python-zstandard"
SRC_URI="https://files.pythonhosted.org/packages/1b/a7/97b157508923ec0c2d27cdc23003cb096fa50ae38ded6e54adcbca3dca35/zstandard-0.14.0.tar.gz -> zstandard-0.14.0.tar.gz"

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