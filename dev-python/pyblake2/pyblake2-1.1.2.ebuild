# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="BLAKE2 hash function extension module"
HOMEPAGE="https://github.com/dchest/pyblake2 https://pypi.org/project/pyblake2/"
SRC_URI="https://files.pythonhosted.org/packages/a6/ea/559658f48713567276cabe1344a9ef918adcb34a9da417dbf0a2f7477d8e/pyblake2-1.1.2.tar.gz"

# pyblake2 itself allows more licenses but blake2 allows the following three
LICENSE="|| ( CC0-1.0 openssl Apache-2.0 )"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

python_test() {
	"${EPYTHON}" test/test.py || die "Tests fail with ${EPYTHON}"
}