# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="efficient arrays of booleans -- C extension"
HOMEPAGE="https://github.com/ilanschnell/bitarray https://pypi.org/project/bitarray/"
SRC_URI="https://files.pythonhosted.org/packages/57/3d/db2c679f5343f7bb79ccd7366441d9e872f60c8e499e15b95551dce9a5ea/bitarray-2.0.0.tar.gz"

SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"

python_test() {
	"${PYTHON}" ${PN}/test_${PN}.py || die "Tests fail with ${EPYTHON}"
}