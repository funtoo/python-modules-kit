# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Zstandard bindings for Python"
HOMEPAGE="https://pypi.org/project/zstandard/ https://github.com/indygreg/python-zstandard"
SRC_URI="https://files.pythonhosted.org/packages/30/bb/551cd25042138bdd2c36168b837c4ed6196da58fa1cfe3d9de8e70ac23dc/zstandard-0.14.1.tar.gz -> zstandard-0.14.1.tar.gz
"

DEPEND="test? ( dev-python/hypothesis[${PYTHON_USEDEP}] )"
RDEPEND="!<dev-python/zstandard-0.15.0 dev-python/cffi:=[${PYTHON_USEDEP}]"
IUSE="test"
RESTRICT="!test? ( test )"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/zstandard-0.14.1"

python_compile() {
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
python_test() {
	esetup.py test
}


post_src_install() {
	rm -rf ${D}/usr/bin
}