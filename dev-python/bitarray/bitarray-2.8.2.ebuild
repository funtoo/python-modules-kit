# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="efficient arrays of booleans -- C extension"
HOMEPAGE="https://github.com/ilanschnell/bitarray https://pypi.org/project/bitarray/"
SRC_URI="https://files.pythonhosted.org/packages/99/f4/316cfb1cd62886d7bf87da48cf847ecfced48ed5f91ff8e54bc52f7fd76e/bitarray-2.8.2.tar.gz -> bitarray-2.8.2.tar.gz"

SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"

python_test() {
	"${PYTHON}" ${PN}/test_${PN}.py || die "Tests fail with ${EPYTHON}"
}