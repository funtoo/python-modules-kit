# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Better dates and times for Python"
HOMEPAGE="https://github.com/crsmithdev/arrow/"
SRC_URI="https://files.pythonhosted.org/packages/bf/c7/1079f195bd0349c2a32f4db62949466cdcafc02d97ff26016c02dfc87ea5/arrow-1.0.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/backports-functools-lru-cache[$(python_gen_usedep 'python2*')]"

DEPEND="
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/chai[${PYTHON_USEDEP}]
		dev-python/simplejson[${PYTHON_USEDEP}]
		${RDEPEND}
	)"

python_prepare() {
	sed -i -e "/with-coverage/d" setup.cfg || die
}

python_test() {
	nosetests -v || die
}