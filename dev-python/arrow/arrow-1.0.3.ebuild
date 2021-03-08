# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Better dates and times for Python"
HOMEPAGE="https://github.com/crsmithdev/arrow/"
SRC_URI="https://files.pythonhosted.org/packages/f6/72/e8c899f0eef9c0131ffdb1bc25d79ff65c60411f831ab17d29e3809f5812/arrow-1.0.3.tar.gz"

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