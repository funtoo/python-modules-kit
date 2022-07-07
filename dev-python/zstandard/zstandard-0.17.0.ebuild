# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/indygreg/python-zstandard https://pypi.org/project/zstandard/"
SRC_URI="https://files.pythonhosted.org/packages/55/29/a4dc59d4df31a5797b07d83a0e53137f6dcd1be0c9ac1e4dbcaac8522a11/zstandard-0.17.0.tar.gz
"

DEPEND="test? ( dev-python/hypothesis[${PYTHON_USEDEP}] )"
RDEPEND="
	python_targets_python2_7? ( dev-python/zstandard-compat )
	dev-python/cffi:=[${PYTHON_USEDEP}]"
IUSE="test python_targets_python2_7"
RESTRICT="!test? ( test )"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/zstandard-0.17.0"

python_compile() {
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
python_test() {
	esetup.py test
}
