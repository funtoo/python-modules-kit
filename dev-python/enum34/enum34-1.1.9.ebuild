# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 pypy )

inherit distutils-r1

DESCRIPTION="Python 3.4 Enum backported"
HOMEPAGE="https://pypi.org/project/enum34/"
SRC_URI="https://files.pythonhosted.org/packages/a4/04/94310230b388f6c1992cec62716229b5f2258ad14002346509152d398e3e/enum34-1.1.9.tar.gz -> enum34-1.1.9.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_test() {
	"${PYTHON}" enum/test.py || die "Tests failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local DOCS=( enum/doc/. enum/README )

	distutils-r1_python_install_all
}