# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Useful extra bits for Python that should be in the standard library"
HOMEPAGE="https://github.com/testing-cabal/extras/ https://pypi.org/project/extras/"
SRC_URI="https://files.pythonhosted.org/packages/be/18/0b7283f0ebf6ad4bb6b9937538495eadf05ef097b102946b9445c4242636/extras-1.0.0.tar.gz -> extras-1.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/testtools[${PYTHON_USEDEP}] )"
RDEPEND=""

python_test() {
	"${PYTHON}" ${PN}/tests/test_extras.py || die
}