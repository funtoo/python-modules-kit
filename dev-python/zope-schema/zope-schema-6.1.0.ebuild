# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope schema Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.schema http://docs.zope.org/zope.schema/"
SRC_URI="https://files.pythonhosted.org/packages/78/93/c40723de61e4e88e5fd0dd432043807c148eb445447804eb00015e6d7b9a/zope.schema-6.1.0.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/zope-event[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/zope-i18nmessageid[${PYTHON_USEDEP}]
		dev-python/zope-testing[${PYTHON_USEDEP}]
		dev-python/zope-testrunner[${PYTHON_USEDEP}]
	)"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}