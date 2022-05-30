# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Zstandard bindings for Python"
HOMEPAGE="https://pypi.org/project/zstandard/ https://github.com/indygreg/python-zstandard"
SRC_URI="https://files.pythonhosted.org/packages/7d/74/50521e915f23ea5fecee190e933527174a34e8623317369d3b9a13ba109c/zstandard-0.16.0.tar.gz
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

S="${WORKDIR}/zstandard-0.16.0"

python_compile() {
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
python_test() {
	esetup.py test
}
