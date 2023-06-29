# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1
MY_PN=zope.deferredimport
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Deferred Impport"
HOMEPAGE="https://docs.zope.org/zope.deferredimport/"
SRC_URI="https://files.pythonhosted.org/packages/a1/b7/9b0c93edb4c6745ac8784c265d244f5b3bc4082d92f7aefe952aaa5be5f3/zope.deferredimport-5.0.tar.gz -> zope.deferredimport-5.0.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]
	dev-python/zope-proxy[${PYTHON_USEDEP}]
"
DEPEND="test? ( ${RDEPEND}
	dev-python/nose[${PYTHON_USEDEP}]
	dev-python/zope-testrunner[${PYTHON_USEDEP}]
	)
	dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

RESTRICT="test"

python_test() {
	nosetests || die
}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}